#### 1. What are the difference between DATA and TYPES?
- **DATA** is used to declare variables where memory is allocated and values can be stored.
- **TYPES** is used to define data types or structures without allocating memory, so no value is stored.

#### 2. What are elementary data types in ABAP? Can you name a few and their usage?
- elementary data types are used to store single values such as text, numbers, and amounts.
- Examples include character, numeric text, integer, packed number, and string.
- Character type stores fixed-length text, integer is used for whole numbers and calculations, numeric text stores only digits but is not used for calculations, packed number is mainly used for
currency and decimal calculations, and string is a dynamic type used for long text.

#### 3. What is a structure in ABAP? Why do we use it?
- A structure is a collection of different fields combined into a single logical unit.
- It is used to store one record at a time, similar to a single row in a database table.

#### 4. What is an internal table and why do we use it?
- An internal table is a collection of structures used to store multiple records in memory.
- It is similar to an Excel sheet with multiple rows, and we use loops to access each row.

#### 5. What is the difference between a structure and an internal table?
- A structure contains multiple fields but holds only one record at a time.
- An internal table contains multiple records of the same structure.
- We don’t need a loop to access a structure, but we need a loop to process an internal table.
  
### Exercise
#### Step 1️⃣ Create a structure type for Material
''' *TYPES: BEGIN OF ty_material,
         matnr TYPE matnr,
         mtart TYPE mtart,
         erdat TYPE erdat,
       END OF ty_material.
