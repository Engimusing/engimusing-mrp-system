
## Instructions for setting up timepiece dev environment
1. Run `git clone https://github.com/Engimusing/engimusing-mrp-system.git`
2. Navigate to the site's folder: `cd engimusing-mrp-system`
3. Switch to the development branch: `git checkout -b conversion`
4. If you don't have `pipenv` installed, install with `pip install pipenv`
5. Create/activate virtual environment: `pipenv shell`
6. Install dependencies: `pipenv install`
7. Download sqlite database from dropbox/emus_us_server/timepiece_data_dumps/
8. Move downloaded db (data.sqlite) into engimusing-mrp-system/mrp/
9. Check for migrations with `python manage.py makemigrations`
10. Run migrations: `python manage.py migrate`
11. Start up the site on localhost: `python manage.py runserver`

# Rest API Endpoints
- [GET mrp/api/inventory/](#inventory)
- [GET mrp/api/part/:id](#part-by-id)
- [POST mrp/api/addPart](#add-part)
- [PUT mrp/api/updatePart/:id](#put-part)
- [DELETE mrp/api/deletePart/:id](#delete-part)

## Inventory
```js
URL: "baseURL/inventory/",
Method: GET
```

Gets the all the parts in the database.

<details>
    <summary>
        Example successful response:
    </summary>

    ```js
    res.data:
        [
            ...,
            {
                "id": 1,
                "partType": "Part Type Name",
                "engimusing_part_number": "00001",
                "description": "Part Description",
                "location": [{"id": 1, "name": "TT006"}],
                "manufacturer": [{"id": 1, "name": "Manufacturer Name"}],
                "TypeFields": [
                    {
                        "id": 1,
                        "name": "Field Name",
                        "fields": "char1"
                    }
                ],
                "char1": "Field Data of the typefield connected to this part.",
                //...some number of field data fields that are on the part will be sent to the user.
            

            },
            ...,
        ]
    ```

</details>

---

## Part By ID
```js
URL: "baseURL/part/646",
Method: GET
```

<details>
    <summary>
        Example successful response:
    </summary>

    ```js
    res.data:
        {
            "id": 646,
            "partType": "Chip Resistor - Surface Mount",
            "location": [
                {
                    "id": 41,
                    "name": "RCT0002-C002"
                }
            ],
            "manufacturer": [
                {
                    "name": "Panasonic Electronic Components"
                }
            ],
            "TypeFields": [
                {
                    "id": 1222,
                    "name": "Test",
                    "fields": "char1",
                    "typePart": 75
                },
                {
                    "id": 1224,
                    "name": "Part Status",
                    "fields": "char3",
                    "typePart": 75
                },
                {
                    "id": 1225,
                    "name": "Resistance",
                    "fields": "char4",
                    "typePart": 75
                },
                {
                    "id": 1226,
                    "name": "Tolerance",
                    "fields": "char5",
                    "typePart": 75
                },
                {
                    "id": 1227,
                    "name": "Power (Watts)",
                    "fields": "char6",
                    "typePart": 75
                },
                {
                    "id": 1228,
                    "name": "Composition",
                    "fields": "char7",
                    "typePart": 75
                },
                {
                    "id": 1229,
                    "name": "Features",
                    "fields": "char8",
                    "typePart": 75
                },
                {
                    "id": 1230,
                    "name": "Temperature Coefficient",
                    "fields": "char9",
                    "typePart": 75
                },
                {
                    "id": 1231,
                    "name": "Operating Temperature",
                    "fields": "char10",
                    "typePart": 75
                },
                {
                    "id": 1232,
                    "name": "Package / Case",
                    "fields": "char11",
                    "typePart": 75
                },
                {
                    "id": 1234,
                    "name": "Size / Dimension",
                    "fields": "char13",
                    "typePart": 75
                },
                {
                    "id": 1235,
                    "name": "Height - Seated (Max)",
                    "fields": "char14",
                    "typePart": 75
                },
                {
                    "id": 1236,
                    "name": "Number of Terminations",
                    "fields": "char15",
                    "typePart": 75
                },
                {
                    "id": 1237,
                    "name": "Failure Rate",
                    "fields": "char16",
                    "typePart": 75
                },
                {
                    "id": 1223,
                    "name": "Packaging",
                    "fields": "char2",
                    "typePart": 75
                },
                {
                    "id": 1233,
                    "name": "Supplier Device Package",
                    "fields": "char12",
                    "typePart": 75
                },
                {
                    "id": 2460,
                    "name": "Testing Add",
                    "fields": "char17",
                    "typePart": 75
                }
            ],
            "engimusing_part_number": "CRS000200",
            "description": "511 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film",
            "char1": "ERJ",
            "char2": "Cut Tape (CT)",
            "char3": "Active",
            "char4": "511 Ohms",
            "char5": "±1%",
            "char6": "0.1W, 1/10W",
            "char7": "Thick Film",
            "char8": "Automotive AEC-Q200",
            "char9": "±100ppm/°C",
            "char10": "-55°C ~ 155°C",
            "char11": "0603 (1608 Metric)",
            "char12": "0603",
            "char13": "0.063\" L x 0.031\" W (1.60mm x 0.80mm)",
            "char14": "0.022\" (0.55mm)",
            "char15": "2",
            "char16": "-",
            "char17": "",
            "char18": "",
            "char19": "",
            "char20": "",
            "char21": "",
            "char22": "",
            "char23": "",
            "char24": "",
            "char25": "",
            "char26": "",
            "char27": "",
            "char28": "",
            "char29": "",
            "char30": "",
            "char31": "",
            "char32": "",
            "char33": "",
            "char34": "",
            "char35": "",
            "datasheet": "/documents/documents/AOA0000C304.pdf"
        }
    ```

</details>

---

## Add Part
```js
URL: "baseURL/addPart/",
Method: POST
```

Add Part to the Database.

**Required Fields:**
- Part Type
- Location (Array of Objects)
- Manufacturer (Array of Objects)

**Optional Fields:**
- Description (Part Description)
- TypeFields (Array of Objects)
- char1-35 (String)
- Datasheet (File)



<details>
    <summary>
        Example Request:
    </summary>

    ```js
    res.body:
        {
            "id": 1376,
            "partType": "test",
            "location": [
                {
                    "id": 207,
                    "name": "test"
                }
            ],
            "manufacturer": [
                {
                    "name": "test"
                }
            ],
            "TypeFields": [
                {
                    "id": 2462,
                    "name": "test",
                    "fields": "char1",
                    "typePart": 195
                }
            ],
            "engimusing_part_number": "000034",
            "description": "test",
            "char1": "test",
            "char2": "",
            "char3": "",
            "char4": "",
            "char5": "",
            "char6": "",
            "char7": "",
            "char8": "",
            "char9": "",
            "char10": "",
            "char11": "",
            "char12": "",
            "char13": "",
            "char14": "",
            "char15": "",
            "char16": "",
            "char17": "",
            "char18": "",
            "char19": "",
            "char20": "",
            "char21": "",
            "char22": "",
            "char23": "",
            "char24": "",
            "char25": "",
            "char26": "",
            "char27": "",
            "char28": "",
            "char29": "",
            "char30": "",
            "char31": "",
            "char32": "",
            "char33": "",
            "char34": "",
            "char35": "",
            "datasheet": null
        }
    ```

</details>

---

## PUT Part
```js
URL: "baseURL/part/1376",
Method: PUT
```

Updates an existing part in the database.

**Required Fields:**
- Part Type
- Location (Array of Objects)
- Manufacturer (Array of Objects)

**Optional Fields:**
- Description (Part Description)
- TypeFields (Array of Objects)
- char1-35 (String)
- Datasheet (File)

| Differences from a POST request:                                       |
| ---------------------------------------------------------------------- |
| Existing Locations need their `id` included in the object            |
| Existing Manufacturers need their `id` included in the object                  |
| Existing TypeFields need their `id` included in the object                   |
| New Locations, Manufacturers, or TypeFields do not need an `id`                                        |


<details>
    <summary>
        Example Request:
    </summary>

    ```js
    res.body:
        {
            "id": 1376,
            "partType": "test",
            "location": [
                {
                    "id": 207,
                    "name": "test"
                }
            ],
            "manufacturer": [
                {
                    "name": "test"
                }
            ],
            "TypeFields": [
                {
                    "id": 2462,
                    "name": "test",
                    "fields": "char1",
                    "typePart": 195
                }
            ],
            "engimusing_part_number": "000034",
            "description": "test",
            "char1": "test",
            "char2": "",
            "char3": "",
            "char4": "",
            "char5": "",
            "char6": "",
            "char7": "",
            "char8": "",
            "char9": "",
            "char10": "",
            "char11": "",
            "char12": "",
            "char13": "",
            "char14": "",
            "char15": "",
            "char16": "",
            "char17": "",
            "char18": "",
            "char19": "",
            "char20": "",
            "char21": "",
            "char22": "",
            "char23": "",
            "char24": "",
            "char25": "",
            "char26": "",
            "char27": "",
            "char28": "",
            "char29": "",
            "char30": "",
            "char31": "",
            "char32": "",
            "char33": "",
            "char34": "",
            "char35": "",
            "datasheet": null
        }
    ```

</details>

---

## DELETE Part
```js
    URL: "baseURL/part/1376",
    Method: DELETE
```

Allows a logged in user to delete a part.


<details>
    <summary>
        Example response:
    </summary>

    ```js
    res.data: {
        "Part deleted!"
    }

    ```
</details>

