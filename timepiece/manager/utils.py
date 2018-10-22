from itertools import groupby

from django.db.models import Sum

from timepiece.utils import add_timezone, get_hours_summary, get_week_start, get_month_start


def daily_summary(day_entries):
    projects = {}
    all_day = {}
    for name, entries in groupby(day_entries, lambda x: x['project__name']):
        hours = get_hours_summary(entries)
        projects[name] = hours
        for key in hours.keys():
            if key in all_day:
                all_day[key] += hours[key]
            else:
                all_day[key] = hours[key]
    return (all_day, projects)


def grouped_totals(entries):
    select = {
        "day": {"date": """DATE_TRUNC('day', end_time)"""},
        "week": {"date": """DATE_TRUNC('week', end_time + '1 day'::interval) - '1 day'::interval"""},
    }
    weekly = entries.extra(select=select["week"]).values('date', 'project__name')
    weekly = weekly.annotate(hours=Sum('hours')).order_by('date', 'project__name')
    daily = entries.extra(select=select["day"]).values('date', 'project__name')
    daily = daily.annotate(hours=Sum('hours')).order_by('date',
                                                        'project__name')
    weeks = {}
    for week, week_entries in groupby(weekly, lambda x: x['date']):
        if week is not None:
            week = add_timezone(week)
        weeks[week] = get_hours_summary(week_entries)
    days = []
    last_week = None
    for day, day_entries in groupby(daily, lambda x: x['date']):
        week = get_week_start(day)
        if last_week and week > last_week:
            yield last_week, weeks.get(last_week, {}), days
            days = []
        days.append((day, daily_summary(day_entries)))
        last_week = week
    yield week, weeks.get(week, {}), days
    """
    months = {}
    for month, month_entries in groupby(monthly, lambda x: x['date']):
        if month is not None:
            month = add_timezone(month)
        months[month] = get_hours_summary(month_entries)
    weeks = []
    last_month = None
    for day, week, week_entries in groupby(weekly, lambda x: x['date']):
        month = get_month_start(day)
        if last_month and month > last_month:
            yield last_month, months.get(last_month, {}), weeks
            weeks = []
        weeks.append((week, weekly_summary(week_entries)))
        last_month = month
    yield month, months.get(month, {}), weeks
    
"""
