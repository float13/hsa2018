# ProcessingJS
## Run Native Processing (Java) code in a web browser

## Installation and Testing
Following the example from http://processingjs.org/learning/, from the **Using Processing** section  
1. Download the file ```processing.min.js``` from (http://processingjs.org/download/)
  - If you click the link, it may just show the code in your web browser.
  - If this happens, try right-clicking the link and doing "Download As..." or "Save as..."
2. Make a new folder on your computer, for example on the Desktop. Name the file something like "pjsTest".
  - Keep it **short** and **no spaces**. Letters and numbers only!
3. Move the ```processing.min.js``` file to your new folder.
4. Either copy an existing Processing **.pde** file to your folder, or copy the example test file ```anything.pde``` from the ProcessingJS.org Learning page
5. For simplicity, rename your Processing file to **anything.pde** to match the example code, if it has a different name.
6. Create a new text file named **test.html** (the ProcessingJS tutorial calls this "anything.html" but I am changing the name to make it simpler). The file will have only 2 lines - copy these lines to **test.html** and save the file.
```html
<script src="processing.js"></script> 
<canvas data-processing-sources="anything.pde"></canvas>
```
  - The string ```"anything.pde"``` **must** match the filename of your Processing file (case sensitive!).
  - It is very important to do this in a *plaintext* editor. **DO NOT** use a rich-text editor like Microsoft Word for your HTML file, and make sure the extension is exactly **test.html** and not anything like "test.html.txt" or "test.html.rtf" or anything else. 
. 
8. In your new folder, right-click on your ```test.html``` file, and try "Open with...", and then select your web browser (eg. Firefox, Safari, Chrome, Internet Explorer).
  - Depending on your computer, you may need to do "Control-click" (Mac) or "Alt-click" (Chromebook) to right-click.
9. Your ```test.html``` file should open up as a web page, and you should see your Processing sketch running in the web page.
