HI There 
If You are reading this it means a lot to me
So Moving Forward explaining the code

1) Comes the libraries or Modules:
                                   By the way I have performed this assignment in two ways

                     1.1) At First I used a bit of Libraries named lxml or Simply The HTML Parser and also the (CSS select) library
                          alongwith requests and re also, Although I got my desired output.
                     
                     1.2) In this step I used only one desired necessary library of (requests) and one module named (re).

               :requests
                         The requests library is used for getting the content from the webpage as it performs the 
                         https get request.
               :re 
                          Re is a module used for matching pattern.
2) Making functions: 
                    
                    So basically 2 functions will be made
                  
                 2.1)
                      First function will be removing necessary css and javascript tags
                      which will scrap the webpage 
                2.2) 
                      Second function will be removing the basic html tags found in the webpage
                      provided.

 3)Calling functions through assigning variables:
                                                  Now the function will be called and the state will be saved in new variable
                                         3.1) First the CSS and Javascript function will be called and
                                               its content will be saved in the new variable
                                          
                                          3.2) Secondly, the html function will be called and within this function argument will 
                                               be passed of the name of variable storing css and script cleaned text.
4) Tags Cleaned, Whitespaces:
                                After the Tags are removed of Every type, now comes removing the extra whitespaces.

5) Creating a text File: 
                           After scraping the text, a text file will be created and it will read the saved output.
                           (No HTML CSS Script Tags, Just plain text)                               
                     

        REASONS ON USE OF SPECIFIC LIBRARIES AND MODULES:
                     
                             AS TOLD EARLIER THE REQUESTS LIBRARY HELPS IN FETCHING THE DATA OF WEBPAGE AND MOST IMPORTANTLY MAKING THE HTTPS 
                             CONNECTION WITH THE WEBPAGE.
                               
                             SECONDLY, THE (RE) MODULE HELPS IN MATCHING THE PATTERN ASKED FOR
                             AND DESIRED TEXT EXTRACTION. 
 
                 (MOREOVERE THERE ARE OTHER SPECIFIC LIBRARIES LIKE BEAUTIFULSOAP AND OTHER BUT THEY EXTRACT THE WHOLE
                                WEBPAGE INCLUDING THERE TAGS AND THE UNNECESSARY CONTANT AND WHITESPACES)
      
                          
