# E05-Input

This is an exercise to help you become accustomed to how Godot treats user input.

Instructions are as follows:
 - Fork and Clone this repository. Choose a location where it will be downloaded on your computer.
 - Open Godot. In the Project Manager, select "Import".
 - Click "Browse", navigate to the folder you downloaded when you cloned the repository, and select the project.godot file. Press "Import & Edit"
 - In the Scene panel, you should see a Game node with three children. In the Info node, you should see an Alpha node (the background for the label) and a Label node. The Label node has an attached script. Edit that now.
 - In the _physics_process function, your assignment is to update the text of the label with the current x and y coordinates of the mouse pointer:
   - To get the current position of the mouse, you can ask the viewport for that value:
     - get_viewport().get_mouse_position()
     - This will return the value as a Vector2 object. You can then access the x and y properties:
     ```
       var mouse_pos = get_viewport().get_mouse_position()
       print(mouse_pos.x)
     ```
     - For more information about mouse and input coordinates, you can read the tutorial [here](https://docs.godotengine.org/en/3.1/tutorials/inputs/mouse_and_input_coordinates.html)
     - You can also see more information about [Vectors in Godot](https://docs.godotengine.org/en/3.1/tutorials/math/vector_math.html) or read the [documentation about Vector2](https://docs.godotengine.org/en/3.1/classes/class_vector2.html)
   - You will then need to update the Label's text with the current x, y position of the mouse. Remember that the Text property will require you to [convert your values to a string](https://godotengine.org/qa/225/how-do-you-convert-between-built-in-types).
   ```
     text = str(mouse_pos.x) + ", " + str(mouse_pos.y)
   ```
 - The next step will be to move the Ship based on keyboard control:
   - Under the Project menu, select Project Settings
   - The second tab over should be "Input Map". Select this tab.
   - In the action box at the top of the window, add a new input: left
   - To the right of the new "left" item in the list, press the plus icon. Select "Key"
   - In the "Please Confirm…" modal that appears, press the "A" key and hit OK.
   - Repeat this process to add inputs for right, up, and down. Assign W to up, D to right, and S to down.
   - Close the Project Settings window, and then open the script attached to the Ship node.
   - in the _physics_process(delta): function, replace pass with the following lines:
    ```
    if Input.is_action_pressed("left"):
        position.x = position.x - 10
    ```
   - Make sure that the function is properly indented, and that you are using tabs instead of spaces
   - Repeat this, adding conditions for the other three inputs you created. *Note: to move up, you will need to add a negative value to position.y.*
 - Run the project, and make sure the program is behaving as you would expect.
 - Update the LICENSE and README.md, commit your changes, and push them back to GitHub. Turn in the URL of your repository on Canvas.


