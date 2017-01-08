function varargout = GUI_Simulacion(varargin)
% GUI_SIMULACION MATLAB code for GUI_Simulacion.fig
%      GUI_SIMULACION, by itself, creates a new GUI_SIMULACION or raises the existing
%      singleton*.
%
%      H = GUI_SIMULACION returns the handle to a new GUI_SIMULACION or the handle to
%      the existing singleton*.
%
%      GUI_SIMULACION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_SIMULACION.M with the given input arguments.
%
%      GUI_SIMULACION('Property','Value',...) creates a new GUI_SIMULACION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_Simulacion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_Simulacion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_Simulacion

% Last Modified by GUIDE v2.5 07-Jan-2017 17:13:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_Simulacion_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_Simulacion_OutputFcn, ...
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


% --- Executes just before GUI_Simulacion is made visible.
function GUI_Simulacion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_Simulacion (see VARARGIN)

% Choose default command line output for GUI_Simulacion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_Simulacion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_Simulacion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtVelocidad_Callback(hObject, eventdata, handles)
% hObject    handle to txtVelocidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtVelocidad as text
%        str2double(get(hObject,'String')) returns contents of txtVelocidad as a double


% --- Executes during object creation, after setting all properties.
function txtVelocidad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtVelocidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtCapacidad_Callback(hObject, eventdata, handles)
% hObject    handle to txtCapacidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtCapacidad as text
%        str2double(get(hObject,'String')) returns contents of txtCapacidad as a double


% --- Executes during object creation, after setting all properties.
function txtCapacidad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtCapacidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtIteraciones_Callback(hObject, eventdata, handles)
% hObject    handle to txtIteraciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtIteraciones as text
%        str2double(get(hObject,'String')) returns contents of txtIteraciones as a double


% --- Executes during object creation, after setting all properties.
function txtIteraciones_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtIteraciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMonteCarlo_Callback(hObject, eventdata, handles)
% hObject    handle to txtMonteCarlo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMonteCarlo as text
%        str2double(get(hObject,'String')) returns contents of txtMonteCarlo as a double


% --- Executes during object creation, after setting all properties.
function txtMonteCarlo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMonteCarlo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtProbabilidad_Callback(hObject, eventdata, handles)
% hObject    handle to txtProbabilidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtProbabilidad as text
%        str2double(get(hObject,'String')) returns contents of txtProbabilidad as a double


% --- Executes during object creation, after setting all properties.
function txtProbabilidad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtProbabilidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnEmpezar.
function btnEmpezar_Callback(hObject, eventdata, handles)
% hObject    handle to btnEmpezar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% funcion
% Valores
velocidad = str2double( get(handles.txtVelocidad, 'string') );
capacidad = str2num( get(handles.txtCapacidad, 'string') );
iteraciones = str2num( get(handles.txtIteraciones, 'string') );
MonteCarlo = str2num( get(handles.txtMonteCarlo, 'string') );
probabilidad = str2double( get(handles.txtProbabilidad, 'string') );
estadoInicial = str2num( get(handles.txtEstadoInicial, 'string') );
paquetes = str2num( get(handles.txtMu, 'string') );
desviacion_est = str2num( get(handles.txtSigma, 'string') );
clientes_hora = str2double( get(handles.txtLambda, 'string') );

% Gráficos
histograma = handles.histograma;
cambioEstados = handles.cambioEstados;
capacidadServidor = handles.capacidadServidor;

% Calcular media y desviación estándar.
media = handles.txtMedia;
desv_est = handles.txtDesviacion;

% Llamar al simulador
simulador(velocidad, capacidad, iteraciones, MonteCarlo, probabilidad, estadoInicial, paquetes, desviacion_est, clientes_hora, histograma, cambioEstados, capacidadServidor, media, desv_est);

% end: funcion

function txtEstadoInicial_Callback(hObject, eventdata, handles)
% hObject    handle to txtEstadoInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtEstadoInicial as text
%        str2double(get(hObject,'String')) returns contents of txtEstadoInicial as a double

% --- Executes during object creation, after setting all properties.
function txtEstadoInicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtEstadoInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function txtMu_Callback(hObject, eventdata, handles)
% hObject    handle to txtMu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMu as text
%        str2double(get(hObject,'String')) returns contents of txtMu as a double

% --- Executes during object creation, after setting all properties.
function txtMu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function txtSigma_Callback(hObject, eventdata, handles)
% hObject    handle to txtSigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtSigma as text
%        str2double(get(hObject,'String')) returns contents of txtSigma as a double

% --- Executes during object creation, after setting all properties.
function txtSigma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function txtLambda_Callback(hObject, eventdata, handles)
% hObject    handle to txtLambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLambda as text
%        str2double(get(hObject,'String')) returns contents of txtLambda as a double


% --- Executes during object creation, after setting all properties.
function txtLambda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
