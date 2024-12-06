function varargout = prime5(varargin)
% PRIME5 MATLAB code for prime5.fig
%      PRIME5, by itself, creates a new PRIME5 or raises the existing
%      singleton*.
%
%      H = PRIME5 returns the handle to a new PRIME5 or the handle to
%      the existing singleton*.
%
%      PRIME5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRIME5.M with the given input arguments.
%
%      PRIME5('Property','Value',...) creates a new PRIME5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prime5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prime5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prime5

% Last Modified by GUIDE v2.5 23-Sep-2022 16:14:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prime5_OpeningFcn, ...
                   'gui_OutputFcn',  @prime5_OutputFcn, ...
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


% --- Executes just before prime5 is made visible.
function prime5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prime5 (see VARARGIN)

% Choose default command line output for prime5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes prime5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prime5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function no_enter_Callback(hObject, eventdata, handles)
% hObject    handle to no_enter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no_enter as text
%        str2double(get(hObject,'String')) returns contents of no_enter as a double


% --- Executes during object creation, after setting all properties.
function no_enter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_enter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check.
function check_Callback(hObject, eventdata, handles)
% hObject    handle to check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z = str2double(get(handles.no_enter,'string')) ;
a = 'prime' ;
if z == 0 || z == 1
   a = 'Not prime' ;
else 
    for n = 2 : 1 : (z-1)
        if  rem(z,n) == 0  
            a = 'Not prime' ;
        end
    end
    
end 
    set(handles.result,'string',a);
    
    
