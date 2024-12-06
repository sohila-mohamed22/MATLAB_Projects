clc;                % Clear the command window
clear;              % Clear all variables from the workspace

% Prompt the user to select a file and read its contents
[filename, pathname] = uigetfile(); 
fullname = strcat(pathname, filename); 
a = dlmread(fullname);  % Read data from the selected file into matrix 'a'

% ----------------------------------
% First Requirement: 
% Shift the first 2000 elements in the row to the right by 8 places
% and set the first 7 elements to 0, with the 8th element set to 1
% ----------------------------------
for c = 2000:-1:1
    a(1, c+8) = a(1, c);  % Shift elements to the right
end
for d = 1:7
    a(1, d) = 0;          % Set the first 7 elements to 0
end
a(1, 8) = 1;              % Set the 8th element to 1

% ----------------------------------
% Second Requirement:
% Update the sequence in 'a' based on certain conditions
% ----------------------------------
for f = 1:2007
    a(1, 1) = 1;  % Ensure the first element is always 1
    if a(1, f+1) == 0
        if a(1, f) == 1
            a(1, f+1) = 0;  % Leave as 0 if the previous value is 1
        else
            a(1, f+1) = 1;  % Set to 1 if the previous value is 0
        end
    else
        a(1, f+1) = a(1, f);  % Otherwise, copy the previous value
    end
end

% ----------------------------------
% Third Requirement:
% Identify patterns of 5 consecutive 1's and insert a 0 after them
% ----------------------------------
w = 2008;  % Initialize shifting index
for e = 1:2036
    if a(1, e) == 1 && a(1, e+1) == 1 && a(1, e+2) == 1 && ...
       a(1, e+3) == 1 && a(1, e+4) == 1
        % Shift elements to the right to make space for a 0
        for c = w:-1:e+5
            a(1, c+1) = a(1, c);
        end
        a(1, e+5) = 0;  % Insert a 0
        w = w + 1;      % Update the shifting index
    end
end

% ----------------------------------
% Fourth Requirement:
% For every 32nd element, insert three consecutive 0's
% ----------------------------------
X = 2042;  % Initialize shifting index
for z = 32:32:2042
    if rem(z, 32) == 0
        % Shift elements to the right to make space for 3 zeros
        for x = X:-1:z+1
            a(1, x+3) = a(1, x);
        end
        % Insert 3 zeros
        for v = 1:3
            a(1, z+v) = 0;
        end
        X = X + 3;  % Update the shifting index
    end
end

% ----------------------------------
% Fifth Requirement:
% Extend the row to a length divisible by 32, filling with 0's
% ----------------------------------
[n, m] = size(a);  % Get the current size of 'a'
for p = m:2500
    if rem(p, 32) == 0
        break;  % Stop if the length is divisible by 32
    else
        a(1, p+1) = 0;  % Append 0's
    end
end

% Write the modified matrix to a text file
writematrix(a, "projectsohila3.txt");

      
 
 
  
  
   

   















