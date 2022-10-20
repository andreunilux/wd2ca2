My project is about an exercise I had to do for my university course "Web Development 2". The project conistst out of one bash script, which is supposed to change the size of picture. 

See specifications:
Write a Bash program that resizes (the width of) a given image, with the following specifications:

The first command-line argument is the path to the input image. This argument is required. If not provided, the program should exit with an error code.
The second command-line argument is the output image width. This argument is optional. If not provided, you should use a default value of 100px.
The output image must have the same name as the input file plus the value of the second argument, plus the same file extension. Example: If the input is /tmp/file.png, then /tmp/file100.png should be generated.
The output image must preserve the aspect ratio of the input image.
Use the following filename convention to deliver your program: yourStudentId_a1.sh (Note: Replace "yourStudentId" by your actual student ID.)

Usage example: To resize image.jpg to a width of 200px, your program must be executed as:


~$ bash yourStudentId_a1.sh image.jpg 200

And image200.jpg should have been generated in the same directory as the input image.



