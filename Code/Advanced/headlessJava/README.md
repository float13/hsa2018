# Processing without Processing
### Doug Brantner 10/17/18
- Testing using Processing core library **without** Processing IDE
- Using only system Java runtime and Processing core 
- **NOTE** Requires special formatting of the ```.java``` file which is **different** from how a normal Processing ```.pde``` file looks.
  - See [Reference][1] below

## Usage:
This will compile **and** run the Processing sketch ```filename.java``` from the Mac/Linux command line:
```bash
./run_processing.sh <filename.java>
```
**Note:** This probably won't work on Windows at the moment. 

## Requirements:
**TODO**
- Probably need Java runtime JRE
- Probably need Processing Source Code core.jar (and possibly more)


## References: 
- https://stackoverflow.com/questions/38104841/processing-in-java-without-ide  

See Also:  
- https://stackoverflow.com/questions/14787093/how-to-run-processing-applications-from-the-terminal

[1]: https://stackoverflow.com/questions/38104841/processing-in-java-without-ide
