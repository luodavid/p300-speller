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

% Last Modified by GUIDE v2.5 19-Jun-2014 09:43:13

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
grid= [];
grid(1,1) = 'E';
grid(1,2) = 'T';
grid(1,3) = 'I';
grid(1,4) = 'L';
grid(1,5) = 'G'; 
grid(1,6) = 'Z';
grid(2,1) = 'A';
grid(2,2) = 'O';
grid(2,3) = 'S';
grid(2,4) = 'C';
grid(2,5) = 'Y';
grid(2,6) = '1';
grid(3,1) = 'N';
grid(3,2) = 'R';
grid(3,3) = 'H';
grid(3,4) = 'M';
grid(3,5) = 'V';
grid(3,6) = '3';
grid(4,1) = 'D';
grid(4,2) = 'U';
grid(4,3) = 'F';
grid(4,4) = 'P';
grid(4,5) = 'X';
grid(4,6) = '5';
grid(5,1) = 'W';
grid(5,2) = 'B';
grid(5,3) = 'K';
grid(5,4) = 'J';
grid(5,5) = 'Q';
grid(5,6) = '7';
grid(6,1) = '2';
grid(6,2) = '4';
grid(6,3) = '6';
grid(6,4) = '8';
grid(6,5) = '9';
grid(6,6) = '0';

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

method = 1;
while(method ~= 1 && method ~= 2 && method ~= 3)
    method = input('What is the input method: (1) keyboard, (2) EOG/EMG (3) EEG\n')
end

trials = 26;
pattern = [];
ischar = [];

[pattern, ischar] = Test(spellergrid, pattern, ischar, trials, method)

pattern
ischar
sum(ischar)
detectchar(grid, spellergrid, pattern, ischar, method)


function [pattern, ischar] = Test(spellergrid, pattern, ischar, trials, method)
for k = 1 : trials
    set(gcf, 'currentcharacter', 'a');
    get(gcf,'currentchar');
    pause(.5)
    if (k < (trials / 2))
        colnum = randi(6,1);
        pattern = [pattern, colnum];
        for i = 1 : 6
            set(spellergrid(i,colnum), 'ForegroundColor', [1 1 1]); 
        end
    else % row manip
        rownum = randi(6,1);
        pattern = [pattern, rownum + 6];
        for j = 1 : 6
            set(spellergrid(rownum,j), 'ForegroundColor', [1 1 1]);
        end
    end
    get(gcf,'currentchar');
    pause(.5) 
    if (k < (trials / 2))
        for i = 1 : 6
            set(spellergrid(i,colnum), 'ForegroundColor', [.502 .502 .502]); 
        end
    else % row manip
        for j = 1 : 6
            set(spellergrid(rownum,j), 'ForegroundColor', [.502 .502 .502]);
        end
    end
    if length(pattern) < trials + 1
        if get(gcf,'currentchar') == 121
            ischar = [ischar, 1];
        else
            ischar = [ischar, 0];
        end
    end    
end


function achar = detectchar(grid, spellergrid, pattern, ischar, method)
if(method ~= 1)
    index = ((find(ischar(2:end) == 1)));
    ischar(index) = 1;
end
%totalscore = sum(ischar); % may not need
index2 = find(ischar == 1);
keys = pattern(index2);
lowerkeys = keys(find(keys < 7));
upperkeys = keys(find(keys > 6));
A = zeros(6,6);
for i = 1 : length(lowerkeys)
    for j = 1 : length(upperkeys)
        A(upperkeys(j) - 6, lowerkeys(i)) = A(upperkeys(j) - 6, lowerkeys(i)) + 1;
    end
end
A
 [x y] = ind2sub(size(A), find(A == max(A(:))));
 achar = char(grid(x,y));


function kpfcn(obj,event) % Needed to prevent window refocusing
