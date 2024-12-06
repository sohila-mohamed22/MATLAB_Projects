function varargout = project1(varargin)
% PROJECT1 MATLAB code for project1.fig
%      PROJECT1, by itself, creates a new PROJECT1 or raises the existing
%      singleton*.
%
%      H = PROJECT1 returns the handle to a new PROJECT1 or the handle to
%      the existing singleton*.
%
%      PROJECT1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT1.M with the given input arguments.
%
%      PROJECT1('Property','Value',...) creates a new PROJECT1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project1

% Last Modified by GUIDE v2.5 27-Sep-2022 17:50:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project1_OpeningFcn, ...
                   'gui_OutputFcn',  @project1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
function radio_off(handles)
set(handles.original,'value',0);
set(handles.encrypted,'value',0);

function pop_off(handles)
set(handles.originalpop,'enable','off');
set(handles.encryptedpop,'enable','off');

% --- Executes just before project1 is made visible.
function project1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project1 (see VARARGIN)

% Choose default command line output for project1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in original.
function original_Callback(hObject, eventdata, handles)
% hObject    handle to original (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of original
global enc
stop(enc) ;
radio_off(handles);
pop_off(handles);
set(handles.original,'value',1);
set(handles.originalpop,'enable','on');
% --- Executes on button press in encrypted.
function encrypted_Callback(hObject, eventdata, handles)
% hObject    handle to encrypted (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of encrypted
 global mysound
 stop(mysound) ;
radio_off(handles);
pop_off(handles);
set(handles.encrypted,'value',1);
set(handles.encryptedpop,'enable','on');

% --- Executes on selection change in originalpop.
function originalpop_Callback(hObject, eventdata, handles)
% hObject    handle to originalpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns originalpop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from originalpop
global mysound
h=get(hObject,'value');
switch h 
    case 2 
        play (mysound)
    case 3 
        pause(mysound)
    case 4 
        resume(mysound)
    case 5 
        stop(mysound)
end

% --- Executes during object creation, after setting all properties.
function originalpop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to originalpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in encryptedpop.
function encryptedpop_Callback(hObject, eventdata, handles)
% hObject    handle to encryptedpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns encryptedpop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from encryptedpop
global enc
h=get(hObject,'value');
switch h
    case 2 
        play (enc)
    case 3 
        pause(enc)
    case 4 
        resume(enc)
    case 5 
        stop(enc)
end


% --- Executes during object creation, after setting all properties.
function encryptedpop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to encryptedpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in audio.
function audio_Callback(hObject, eventdata, handles)
% hObject    handle to audio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mysound 
global enc
%  stop(mysound)
%  stop(enc)
[ filename , pathname ] = uigetfile() ;
fullname = strcat(pathname , filename) ;
[ y , fs ] = audioread(fullname) ;
mysound = audioplayer(y,fs) ; 
enc = audioplayer(y,3*fs) ;


% --- Executes on button press in choose1.
function choose1_Callback(hObject, eventdata, handles)
% hObject    handle to choose1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a 
[ filename , pathname ] = uigetfile() ;
fullpath = strcat ( pathname , filename ) ;
a = imread(fullpath) ;

% --- Executes on button press in original1.
function original1_Callback(hObject, eventdata, handles)
% hObject    handle to original1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
axes(handles.axes1) ;
imshow(a) ;
% --- Executes on button press in gray.
function gray_Callback(hObject, eventdata, handles)
% hObject    handle to gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
axes(handles.axes5)
b = rgb2gray(a) ;
imshow(b) ; 


% --- Executes on button press in black.
function black_Callback(hObject, eventdata, handles)
% hObject    handle to black (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
axes(handles.axes6) ;
c = im2bw(a) ;
imshow(c) ;

% --- Executes on button press in encrypted1.
function encrypted1_Callback(hObject, eventdata, handles)
% hObject    handle to encrypted1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a 
axes(handles.axes7) ;
d= imnoise( a , "salt & pepper" , 1 ) ;
imshow(d) ;
