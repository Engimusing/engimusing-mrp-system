from django.conf.urls import url

from timepiece.manager import views


urlpatterns = [
   

    # Users
    url(r'^user/settings/$',
        views.EditSettings.as_view(),
        name='edit_settings'),
    url(r'^user/$',
        views.ListUsers.as_view(),
        name='list_users'),

    url(r'^weektimesheetcsv/(?P<date>\d{4}-\d{2}-\d{2})/$',
        views.week_timesheet,
        name='timesheet_csv'),
    url(r'^weektimesheet/(?P<user_id>\d+)/$',
        views.WeekTimesheet.as_view(),
        name='week_timesheet'),
    

    # Projects
    url(r'^project/$',
        views.ListProjects.as_view(),
        name='list_projects'),
    url(r'^project/inactive$',
        views.ListInactiveProjects.as_view(),
        name='inactive_projects'),
    url(r'^project/create/$',
        views.ProjectCreate,
        name='create_project'),
    url(r'^project/(?P<project_id>\d+)/$',
        views.ViewProject.as_view(),
        name='view_project'),
    url(r'^project/(?P<project_id>\d+)/edit/$',
        views.ProjectEdit,
        name='edit_project'),
    url(r'^project/(?P<project_id>\d+)/delete/$',
        views.DeleteProject.as_view(),
        name='delete_project'),

#url(r'^project/(?P<project_id>\d+)/inactivate/$',
 #       views.InactivateProject.as_view(),
 #       name='inactivate_project'),



     # Project timesheets
    url(r'^project/(?P<project_id>\d+)/timesheet/$',
        views.ProjectTimesheet.as_view(),
        name='view_project_timesheet'),

      # User-project relationships
    url(r'^relationship/create/$',
        views.CreateRelationship.as_view(),
        name='create_relationship'),
    url(r'^relationship/delete/$',
        views.DeleteRelationship.as_view(),
        name='delete_relationship'),

    ]     



