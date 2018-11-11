# ProcessingJS
## Run Native Processing (Java) code in a web browser
- This can be used to execute Processing code on computers that don't support Processing (for example, Chrome).
- It works by converting your Processing/Java code into JavaScript, which can be executed by a web browser.
  - This makes it cross-platform, since most operating systems support web browser-based JavaScript
  - There may be some limitations or unsupported features - see the [ProcessingJS Reference](http://processingjs.org/reference/) for details.

### Requirements
- A web browser that supports JavaScript (eg. Firefox, Safari, Chrome, Internet Explorer)
- A text editor that can write **plaintext** files
  - **DO NOT** use a rich-text editor like Microsoft Word or Google Docs
    - On Mac, TextEdit will work, as long as it's in Plain Text mode, not Rich Text mode.
    - On Windows, Notepad or [Notepad++](https://notepad-plus-plus.org/)
- You need to be able write and save files with custom extensions, like ```.html``` and ```.pde```

## Installation and Testing
Following the example from http://processingjs.org/learning/, from the **Using Processing** section  
1. Make a new folder on your computer, for example on the Desktop. Name the folder ```pjsTest```
  - Keep it **short** and **no spaces**. Letters and numbers only!
2. Download the file ```processing.min.js``` from (http://processingjs.org/download/)
  - If you click the link, it may just show the code in your web browser.
  - If this happens, try right-clicking the link and doing "Download As..." or "Save as..."
3. Move the ```processing.min.js``` file to your new ```pjsTest``` folder.
4. Either copy an existing Processing **.pde** file to your folder, or copy the example test file ```anything.pde``` from the ProcessingJS.org Learning page
5. For simplicity, rename your Processing file to ```anything.pde``` to match the example code, if it has a different name.
6. Create a new text file named ```test.html``` (the ProcessingJS tutorial calls this "anything.html" but I am changing the name to make it simpler). The file will have only 2 lines - copy these lines to ```test.html``` and save the file.
```html
<script src="processing.js"></script> 
<canvas data-processing-sources="anything.pde"></canvas>
```
  - The string ```"anything.pde"``` **must** match the filename of your Processing file (case sensitive!).
  - It is very important to do this in a *plaintext* editor. and make sure the extension is exactly **test.html** and not anything like "test.html.txt" or "test.html.rtf" or anything else. 
7. In your new folder, right-click on your ```test.html``` file, and try "Open with...", and then select your web browser (eg. Firefox, Safari, Chrome, Internet Explorer).
  - Depending on your computer, you may need to do "Control-click" (Mac) or "Alt-click" (Chromebook) to right-click.
8. Your ```test.html``` file should open up as a web page, and you should see your Processing sketch running in the web page.
  - The URL in the browser will be something like:  
    ```file:///Users/.../Desktop/pjsTest/test.html``` (it will probably be a little different on your computer).
  - This is serving a web page locally from your own computer.
  - You can bookmark this URL, to make it easier to find from your web browser.

## Troubleshooting
- You must be able to save your text files with **explicit** file extensions. Sometimes your OS might hide file extensions - try to enable displaying full filenames with extensions on your OS.
  - You want to see the full filename ```test.html```, not just ```test```.
  - Something like ```test.html.txt```, ```test.html.rtf```, ```test.html.docx```, etc. will **not** work.
- If you open your ```test.html``` page and just see a blank page:
  1. Make sure your Processing code ```anything.pde``` is valid and working (test it with Processing)
  2. Make sure all 3 files are in the same folder:
    - Your Processing file ```anything.pde```
    - Your ```test.html``` web page file
    - The ```processing.min.js``` file
  3. In your web browser, look for the "Web Console" or "Developer Console", which will print out JavaScript warnings and errors.
    - These error messages may be helpful in tracing your bug.
  4. You may need to change the file permissions on your system (advanced and Operating System dependent)
