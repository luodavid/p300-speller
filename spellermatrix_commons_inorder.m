function varargout = p300_speller_matrix(varargin)
% P300_SPELLER_MATRIX MATLAB code for p300_speller_matrix.fig
%      P300_SPELLER_MATRIX, by itself, creates a new P300_SPELLER_MATRIX or raises the existing
%      singleton*.
%
%      H = P300_SPELLER_MATRIX returns the handle to a new P300_SPELLER_MATRIX or the handle to
%      the existing singleton*.
%
%      P300_SPELLER_MATRIX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in P300_SPELLER_MATRIX.M with the given input arguments.
%
%      P300_SPELLER_MATRIX('Property','Value',...) creates a new P300_SPELLER_MATRIX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before p300_speller_matrix_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to p300_speller_matrix_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help p300_speller_matrix

% Last Modified by GUIDE v2.5 19-Jun-2014 11:55:38

% Begin initialization code - DO NOT EDIT


gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @p300_speller_matrix_OpeningFcn, ...
                   'gui_OutputFcn',  @p300_speller_matrix_OutputFcn, ...
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


% --- Executes just before p300_speller_matrix is made visible.
function p300_speller_matrix_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to p300_speller_matrix (see VARARGIN)

% Choose default command line output for p300_speller_matrix
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes p300_speller_matrix wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function [varargout] = p300_speller_matrix_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
set(gcf,'keypressfcn',@kpfcn)

%setup the grids;
lettergrid= [];
lettergrid(1,1) = 'E';
lettergrid(1,2) = 'T';
lettergrid(1,3) = 'I';
lettergrid(1,4) = 'L';
lettergrid(1,5) = 'G'; 
lettergrid(1,6) = 'Z';
lettergrid(2,1) = 'A';
lettergrid(2,2) = 'O';
lettergrid(2,3) = 'S';
lettergrid(2,4) = 'C';
lettergrid(2,5) = 'Y';
lettergrid(2,6) = '1';
lettergrid(3,1) = 'N';
lettergrid(3,2) = 'R';
lettergrid(3,3) = 'H';
lettergrid(3,4) = 'M';
lettergrid(3,5) = 'V';
lettergrid(3,6) = '3';
lettergrid(4,1) = 'D';
lettergrid(4,2) = 'U';
lettergrid(4,3) = 'F';
lettergrid(4,4) = 'P';
lettergrid(4,5) = 'X';
lettergrid(4,6) = '5';
lettergrid(5,1) = 'W';
lettergrid(5,2) = 'B';
lettergrid(5,3) = 'K';
lettergrid(5,4) = 'J';
lettergrid(5,5) = 'Q';
lettergrid(5,6) = '7';
lettergrid(6,1) = '2';
lettergrid(6,2) = '4';
lettergrid(6,3) = '6';
lettergrid(6,4) = '8';
lettergrid(6,5) = '9';
lettergrid(6,6) = '0';

A = findobj('tag', 'a1');
B = findobj('tag', 'b2');
C = findobj('tag', 'c3');
D = findobj('tag', 'd4');
E = findobj('tag', 'e5');
F = findobj('tag', 'f6');
G = findobj('tag', 'g1');
H = findobj('tag', 'h2');
I = findobj('tag', 'i3');
J = findobj('tag', 'j4');
K = findobj('tag', 'k5');
L = findobj('tag', 'l6');
M = findobj('tag', 'm1');
N = findobj('tag', 'n2');
O = findobj('tag', 'o3');
P = findobj('tag', 'p4');
Q = findobj('tag', 'q5');
R = findobj('tag', 'r6');
S = findobj('tag', 's1');
T = findobj('tag', 't2');
U = findobj('tag', 'u3');
V = findobj('tag', 'v4');
W = findobj('tag', 'w5');
X = findobj('tag', 'x6');
Y = findobj('tag', 'y1');
Z = findobj('tag', 'z2');
one = findobj('tag', 'one3');
two = findobj('tag', 'two4');
three = findobj('tag', 'three5');
four = findobj('tag', 'four6');
five = findobj('tag', 'five1');
six = findobj('tag', 'six2');
seven = findobj('tag', 'seven3');
eight = findobj('tag', 'eight4'); 
nine = findobj('tag', 'nine5');
zero = findobj('tag', 'zero6'); 

spellergrid = [];
spellergrid(1,1) = E;
spellergrid(1,2) = T;
spellergrid(1,3) = I;
spellergrid(1,4) = L;
spellergrid(1,5) = G; 
spellergrid(1,6) = Z;
spellergrid(2,1) = A;
spellergrid(2,2) = O;
spellergrid(2,3) = S;
spellergrid(2,4) = C;
spellergrid(2,5) = Y;
spellergrid(2,6) = one;
spellergrid(3,1) = N;
spellergrid(3,2) = R;
spellergrid(3,3) = H;
spellergrid(3,4) = M;
spellergrid(3,5) = V;
spellergrid(3,6) = three;
spellergrid(4,1) = D;
spellergrid(4,2) = U;
spellergrid(4,3) = F;
spellergrid(4,4) = P;
spellergrid(4,5) = X;
spellergrid(4,6) = five;
spellergrid(5,1) = W;
spellergrid(5,2) = B;
spellergrid(5,3) = K;
spellergrid(5,4) = J;
spellergrid(5,5) = Q;
spellergrid(5,6) = seven;
spellergrid(6,1) = two;
spellergrid(6,2) = four;
spellergrid(6,3) = six;
spellergrid(6,4) = eight;
spellergrid(6,5) = nine;
spellergrid(6,6) = zero;

%set(A, 'ForegroundColor', [1 1 1]);

method = 2;
while(method ~= 1 && method ~= 2 && method ~= 3)
    method = input('What is the input method: (1) keyboard, (2) EOG/EMG (3) EEG\n')
end

trials = 12;
pattern = [];
ischar = [];

[pattern, ischar] = Test(lettergrid, spellergrid, pattern, ischar, trials, method, hObject, eventdata, handles)

%pattern
%ischar
%sum(ischar)
%detectchar(lettergrid, spellergrid, pattern, ischar, method)


function [pattern, ischar] = Test(lettergrid, spellergrid, pattern, ischar, trials, method, hObject, eventdata, handles)

count = 1;
row_flag = 0;
resume = 1;

%for k = 1 : trials
while resume
    %uipanel1_SelectionChangeFcn;
    %{
    methodbutton = get(temp, 'SelectedObject')
    switch get(methodbutton, 'Tag')
    case 'radiobutton1'
        method = 1
    case 'radiobutton2'
        method = 2
    case 'radiobutton3'
        method = 3
    end
    if count == 7
        count = 1;
    end
    %}
    %{
    if length(ischar) > 0
    ischar(length(ischar))
    end
    %}
    if length(ischar) > 0 && ischar(length(ischar)) == 1
        if row_flag == 0
            row_flag = 1;
            pattern = [pattern, zeros(1,7 - count)]
            ischar = [ischar, zeros(1,7 - count)]
            count = 1;
        else 
            row_flag = 0;
            pattern = [pattern, zeros(1,7 - count)]
            ischar = [ischar, zeros(1,7 - count)]
            count = 1;
        end
    end
    set(gcf, 'currentcharacter', 'a');
    get(gcf,'currentchar');
    pause(.5)
    if row_flag == 0 %column mamnip
        colnum = count;
        pattern = [pattern, colnum];
        for i = 1 : 6
            set(spellergrid(i,colnum), 'ForegroundColor', [1 1 1]); 
        end
    else % row manip
        rownum = count;
        pattern = [pattern, rownum + 6];
        for j = 1 : 6
            set(spellergrid(rownum,j), 'ForegroundColor', [1 1 1]);
        end
    end
    get(gcf,'currentchar');
    pause(.5) 
    if row_flag == 0
        for i = 1 : 6
            set(spellergrid(i,colnum), 'ForegroundColor', [.502 .502 .502]); 
        end
    else % row manip
        for j = 1 : 6
            set(spellergrid(rownum,j), 'ForegroundColor', [.502 .502 .502]);
        end
    end
    if length(ischar) < length(pattern)
        if get(gcf,'currentchar') == 121
            ischar = [ischar, 1];
        else
            ischar = [ischar, 0];
        end
    end    
    count = count + 1;
    achar = detectchar(lettergrid, spellergrid, pattern, ischar, method);
    if length(achar) == 1
        pattern
        ischar
        achar
        %cap the character to the text_output
        text_output_Callback(hObject, eventdata, handles, achar)
        % restart the process
        pattern = [];
        ischar = [];
        row_flag = 0;
        count = 1; 
    end
end


function achar = detectchar(lettergrid, spellergrid, pattern, ischar, method)
if method ~= 1
    index = ((find(ischar(2:end) == 1)));
    pattern
    ischar(find(ischar(2:end) == 1)) = 2
    %ischar(index) = 2;
end
%totalscore = sum(ischar); % may not need
index2 = find(ischar >= 1)
keys = pattern(index2)
lowerkeys = keys(find(keys < 7))
upperkeys = keys(find(keys > 6))
A = zeros(6,6);
 %parses the lowerkeys compares to the upperkeys for intersections
 counter = - length(upperkeys);
for i = 1 : length(lowerkeys)
    counter = counter + length(upperkeys)
    for j = 1 : length(upperkeys)
        ischar(keys(counter + j))
        A(upperkeys(j) - 6, lowerkeys(i)) = A(upperkeys(j) - 6, lowerkeys(i)) + ischar(keys(counter + j)); %%%% 
    end
end
A;
if max(A(:)) ~= 0 
 [x y] = ind2sub(size(A), find(A == max(A(:))));
 achar = char(lettergrid(x,y));
 A
else
    achar = 'DON"TACCEPT';
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function kpfcn(obj,event) % Needed to prevent window refocusing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function text_output_Callback(hObject, eventdata, handles, achar)
% hObject    handle to text_output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_output as text
%        str2double(get(hObject,'String')) returns contents of text_output as a double
text = get(handles.text_output,'String');
text = char(strcat(text, achar));
set(handles.text_output,'String',text)

% --- Executes during object creation, after setting all properties.
function text_output_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes when selected object is changed in uipanel1.
function uipanel1_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel1 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
switch get(eventdata.NewValue, 'Tag')
    case 'radiobutton1'
        method = 1;
    case 'radiobutton2'
        method = 2;
    case 'radiobutton3'
        method = 3;
end
