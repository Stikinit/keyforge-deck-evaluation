??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:P*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:P*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:fZ*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:fZ*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Z*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:Z*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Z* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:Z*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
time_distributed_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2**
shared_nametime_distributed_2/kernel
?
-time_distributed_2/kernel/Read/ReadVariableOpReadVariableOptime_distributed_2/kernel*
_output_shapes

:2*
dtype0
?
time_distributed_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*(
shared_nametime_distributed_2/bias

+time_distributed_2/bias/Read/ReadVariableOpReadVariableOptime_distributed_2/bias*
_output_shapes
:2*
dtype0
?
time_distributed_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2**
shared_nametime_distributed_3/kernel
?
-time_distributed_3/kernel/Read/ReadVariableOpReadVariableOptime_distributed_3/kernel*
_output_shapes

:2*
dtype0
?
time_distributed_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_3/bias

+time_distributed_3/bias/Read/ReadVariableOpReadVariableOptime_distributed_3/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

:P*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:P*
dtype0
?
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:fZ*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:fZ*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Z*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:Z*
dtype0
?
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Z*'
shared_nameAdam/dense_10/kernel/m
?
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:Z*
dtype0
?
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/m
?
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0
?
 Adam/time_distributed_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*1
shared_name" Adam/time_distributed_2/kernel/m
?
4Adam/time_distributed_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_2/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/time_distributed_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*/
shared_name Adam/time_distributed_2/bias/m
?
2Adam/time_distributed_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_2/bias/m*
_output_shapes
:2*
dtype0
?
 Adam/time_distributed_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*1
shared_name" Adam/time_distributed_3/kernel/m
?
4Adam/time_distributed_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_3/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/time_distributed_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_3/bias/m
?
2Adam/time_distributed_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_3/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

:P*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:P*
dtype0
?
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:fZ*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:fZ*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Z*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:Z*
dtype0
?
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Z*'
shared_nameAdam/dense_10/kernel/v
?
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:Z*
dtype0
?
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/v
?
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0
?
 Adam/time_distributed_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*1
shared_name" Adam/time_distributed_2/kernel/v
?
4Adam/time_distributed_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_2/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/time_distributed_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*/
shared_name Adam/time_distributed_2/bias/v
?
2Adam/time_distributed_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_2/bias/v*
_output_shapes
:2*
dtype0
?
 Adam/time_distributed_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*1
shared_name" Adam/time_distributed_3/kernel/v
?
4Adam/time_distributed_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_3/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/time_distributed_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_3/bias/v
?
2Adam/time_distributed_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_3/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?X
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?X
value?XB?W B?W
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer_with_weights-5
layer-14
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
]
	layer
regularization_losses
trainable_variables
	variables
	keras_api
]
	layer
regularization_losses
trainable_variables
	variables
	keras_api
R
 regularization_losses
!trainable_variables
"	variables
#	keras_api
 
R
$regularization_losses
%trainable_variables
&	variables
'	keras_api
h

(kernel
)bias
*regularization_losses
+trainable_variables
,	variables
-	keras_api
R
.regularization_losses
/trainable_variables
0	variables
1	keras_api
R
2regularization_losses
3trainable_variables
4	variables
5	keras_api
R
6regularization_losses
7trainable_variables
8	variables
9	keras_api
h

:kernel
;bias
<regularization_losses
=trainable_variables
>	variables
?	keras_api
R
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
h

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
R
Jregularization_losses
Ktrainable_variables
L	variables
M	keras_api
h

Nkernel
Obias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?
Titer

Ubeta_1

Vbeta_2
	Wdecay
Xlearning_rate(m?)m?:m?;m?Dm?Em?Nm?Om?Ym?Zm?[m?\m?(v?)v?:v?;v?Dv?Ev?Nv?Ov?Yv?Zv?[v?\v?
 
V
Y0
Z1
[2
\3
(4
)5
:6
;7
D8
E9
N10
O11
V
Y0
Z1
[2
\3
(4
)5
:6
;7
D8
E9
N10
O11
?
regularization_losses
]layer_regularization_losses
^metrics
_layer_metrics
trainable_variables
`non_trainable_variables
	variables

alayers
 
h

Ykernel
Zbias
bregularization_losses
ctrainable_variables
d	variables
e	keras_api
 

Y0
Z1

Y0
Z1
?
flayer_regularization_losses
regularization_losses
gmetrics
hlayer_metrics
trainable_variables
inon_trainable_variables
	variables

jlayers
h

[kernel
\bias
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
 

[0
\1

[0
\1
?
olayer_regularization_losses
regularization_losses
pmetrics
qlayer_metrics
trainable_variables
rnon_trainable_variables
	variables

slayers
 
 
 
?
tlayer_regularization_losses
 regularization_losses
umetrics
vlayer_metrics
!trainable_variables
wnon_trainable_variables
"	variables

xlayers
 
 
 
?
ylayer_regularization_losses
$regularization_losses
zmetrics
{layer_metrics
%trainable_variables
|non_trainable_variables
&	variables

}layers
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
?
~layer_regularization_losses
*regularization_losses
metrics
?layer_metrics
+trainable_variables
?non_trainable_variables
,	variables
?layers
 
 
 
?
 ?layer_regularization_losses
.regularization_losses
?metrics
?layer_metrics
/trainable_variables
?non_trainable_variables
0	variables
?layers
 
 
 
?
 ?layer_regularization_losses
2regularization_losses
?metrics
?layer_metrics
3trainable_variables
?non_trainable_variables
4	variables
?layers
 
 
 
?
 ?layer_regularization_losses
6regularization_losses
?metrics
?layer_metrics
7trainable_variables
?non_trainable_variables
8	variables
?layers
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

:0
;1
?
 ?layer_regularization_losses
<regularization_losses
?metrics
?layer_metrics
=trainable_variables
?non_trainable_variables
>	variables
?layers
 
 
 
?
 ?layer_regularization_losses
@regularization_losses
?metrics
?layer_metrics
Atrainable_variables
?non_trainable_variables
B	variables
?layers
[Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

D0
E1
?
 ?layer_regularization_losses
Fregularization_losses
?metrics
?layer_metrics
Gtrainable_variables
?non_trainable_variables
H	variables
?layers
 
 
 
?
 ?layer_regularization_losses
Jregularization_losses
?metrics
?layer_metrics
Ktrainable_variables
?non_trainable_variables
L	variables
?layers
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

N0
O1
?
 ?layer_regularization_losses
Pregularization_losses
?metrics
?layer_metrics
Qtrainable_variables
?non_trainable_variables
R	variables
?layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEtime_distributed_2/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEtime_distributed_2/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEtime_distributed_3/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEtime_distributed_3/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1
?2
 
 
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
 

Y0
Z1

Y0
Z1
?
 ?layer_regularization_losses
bregularization_losses
?metrics
?layer_metrics
ctrainable_variables
?non_trainable_variables
d	variables
?layers
 
 
 
 

0
 

[0
\1

[0
\1
?
 ?layer_regularization_losses
kregularization_losses
?metrics
?layer_metrics
ltrainable_variables
?non_trainable_variables
m	variables
?layers
 
 
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_2/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_2/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_3/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_3/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_2/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_2/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_3/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_3/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_59Placeholder*+
_output_shapes
:?????????$*
dtype0* 
shape:?????????$
{
serving_default_input_60Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_59serving_default_input_60time_distributed_2/kerneltime_distributed_2/biastime_distributed_3/kerneltime_distributed_3/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_17646936
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-time_distributed_2/kernel/Read/ReadVariableOp+time_distributed_2/bias/Read/ReadVariableOp-time_distributed_3/kernel/Read/ReadVariableOp+time_distributed_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp4Adam/time_distributed_2/kernel/m/Read/ReadVariableOp2Adam/time_distributed_2/bias/m/Read/ReadVariableOp4Adam/time_distributed_3/kernel/m/Read/ReadVariableOp2Adam/time_distributed_3/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp4Adam/time_distributed_2/kernel/v/Read/ReadVariableOp2Adam/time_distributed_2/bias/v/Read/ReadVariableOp4Adam/time_distributed_3/kernel/v/Read/ReadVariableOp2Adam/time_distributed_3/bias/v/Read/ReadVariableOpConst*<
Tin5
321	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_save_17647793
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetime_distributed_2/kerneltime_distributed_2/biastime_distributed_3/kerneltime_distributed_3/biastotalcounttotal_1count_1total_2count_2Adam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/m Adam/time_distributed_2/kernel/mAdam/time_distributed_2/bias/m Adam/time_distributed_3/kernel/mAdam/time_distributed_3/bias/mAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/v Adam/time_distributed_2/kernel/vAdam/time_distributed_2/bias/v Adam/time_distributed_3/kernel/vAdam/time_distributed_3/bias/v*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference__traced_restore_17647944??
?
u
K__inference_concatenate_1_layer_call_and_return_conditional_losses_17646376

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????f2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????f2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????P:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
e
G__inference_dropout_5_layer_call_and_return_conditional_losses_17647558

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_time_distributed_2_layer_call_fn_17647197

inputs
unknown:2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_176466632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs
?D
?
E__inference_model_5_layer_call_and_return_conditional_losses_17646749

inputs
inputs_1-
time_distributed_2_17646707:2)
time_distributed_2_17646709:2-
time_distributed_3_17646714:2)
time_distributed_3_17646716:"
dense_8_17646722:P
dense_8_17646724:P"
dense_9_17646731:fZ
dense_9_17646733:Z#
dense_10_17646737:Z
dense_10_17646739:#
dense_11_17646743:
dense_11_17646745:
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?*time_distributed_2/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_17646707time_distributed_2_17646709*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_176466632,
*time_distributed_2/StatefulPartitionedCall?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshapeinputs)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
time_distributed_2/Reshape?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0time_distributed_3_17646714time_distributed_3_17646716*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_176466302,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
time_distributed_3/Reshape?
flatten_1/PartitionedCallPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_176463222
flatten_1/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCallinputs_1dense_8_17646722dense_8_17646724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_176463352!
dense_8/StatefulPartitionedCall?
softmax_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_176463462
softmax_1/PartitionedCall?
-weighted_sum_by_dot_product_1/PartitionedCallPartitionedCallinputs"softmax_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *d
f_R]
[__inference_weighted_sum_by_dot_product_1_layer_call_and_return_conditional_losses_176463602/
-weighted_sum_by_dot_product_1/PartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_176465732#
!dropout_3/StatefulPartitionedCall?
concatenate_1/PartitionedCallPartitionedCall6weighted_sum_by_dot_product_1/PartitionedCall:output:0*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????f* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_176463762
concatenate_1/PartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_9_17646731dense_9_17646733*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_176463892!
dense_9/StatefulPartitionedCall?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_176465332#
!dropout_4/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_10_17646737dense_10_17646739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_10_layer_call_and_return_conditional_losses_176464132"
 dense_10/StatefulPartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_176465002#
!dropout_5/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_11_17646743dense_11_17646745*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_11_layer_call_and_return_conditional_losses_176464362"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647271

inputs8
&dense_6_matmul_readvariableop_resource:25
'dense_6_biasadd_readvariableop_resource:2
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_6/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$   2   2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$22
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs
?	
?
E__inference_dense_7_layer_call_and_return_conditional_losses_17646149

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17646069

inputs"
dense_6_17646059:2
dense_6_17646061:2
identity??dense_6/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshape?
dense_6/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_6_17646059dense_6_17646061*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_176460102!
dense_6/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_6/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????22
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_6/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_4_layer_call_fn_17647501

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_176464002
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????Z2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????Z:O K
'
_output_shapes
:?????????Z
 
_user_specified_nameinputs
?`
?
!__inference__traced_save_17647793
file_prefix-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_time_distributed_2_kernel_read_readvariableop6
2savev2_time_distributed_2_bias_read_readvariableop8
4savev2_time_distributed_3_kernel_read_readvariableop6
2savev2_time_distributed_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop?
;savev2_adam_time_distributed_2_kernel_m_read_readvariableop=
9savev2_adam_time_distributed_2_bias_m_read_readvariableop?
;savev2_adam_time_distributed_3_kernel_m_read_readvariableop=
9savev2_adam_time_distributed_3_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop?
;savev2_adam_time_distributed_2_kernel_v_read_readvariableop=
9savev2_adam_time_distributed_2_bias_v_read_readvariableop?
;savev2_adam_time_distributed_3_kernel_v_read_readvariableop=
9savev2_adam_time_distributed_3_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*?
value?B?0B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_time_distributed_2_kernel_read_readvariableop2savev2_time_distributed_2_bias_read_readvariableop4savev2_time_distributed_3_kernel_read_readvariableop2savev2_time_distributed_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop;savev2_adam_time_distributed_2_kernel_m_read_readvariableop9savev2_adam_time_distributed_2_bias_m_read_readvariableop;savev2_adam_time_distributed_3_kernel_m_read_readvariableop9savev2_adam_time_distributed_3_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableop;savev2_adam_time_distributed_2_kernel_v_read_readvariableop9savev2_adam_time_distributed_2_bias_v_read_readvariableop;savev2_adam_time_distributed_3_kernel_v_read_readvariableop9savev2_adam_time_distributed_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *>
dtypes4
220	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :P:P:fZ:Z:Z:::: : : : : :2:2:2:: : : : : : :P:P:fZ:Z:Z::::2:2:2::P:P:fZ:Z:Z::::2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:P: 

_output_shapes
:P:$ 

_output_shapes

:fZ: 

_output_shapes
:Z:$ 

_output_shapes

:Z: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:P: 

_output_shapes
:P:$ 

_output_shapes

:fZ: 

_output_shapes
:Z:$ 

_output_shapes

:Z: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$  

_output_shapes

:2: !

_output_shapes
:2:$" 

_output_shapes

:2: #

_output_shapes
::$$ 

_output_shapes

:P: %

_output_shapes
:P:$& 

_output_shapes

:fZ: '

_output_shapes
:Z:$( 

_output_shapes

:Z: )

_output_shapes
::$* 

_output_shapes

:: +

_output_shapes
::$, 

_output_shapes

:2: -

_output_shapes
:2:$. 

_output_shapes

:2: /

_output_shapes
::0

_output_shapes
: 
??
?
E__inference_model_5_layer_call_and_return_conditional_losses_17646852
input_59
input_60-
time_distributed_2_17646810:2)
time_distributed_2_17646812:2-
time_distributed_3_17646817:2)
time_distributed_3_17646819:"
dense_8_17646825:P
dense_8_17646827:P"
dense_9_17646834:fZ
dense_9_17646836:Z#
dense_10_17646840:Z
dense_10_17646842:#
dense_11_17646846:
dense_11_17646848:
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?*time_distributed_2/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCallinput_59time_distributed_2_17646810time_distributed_2_17646812*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_176462872,
*time_distributed_2/StatefulPartitionedCall?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshapeinput_59)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
time_distributed_2/Reshape?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0time_distributed_3_17646817time_distributed_3_17646819*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_176463082,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
time_distributed_3/Reshape?
flatten_1/PartitionedCallPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_176463222
flatten_1/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCallinput_60dense_8_17646825dense_8_17646827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_176463352!
dense_8/StatefulPartitionedCall?
softmax_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_176463462
softmax_1/PartitionedCall?
-weighted_sum_by_dot_product_1/PartitionedCallPartitionedCallinput_59"softmax_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *d
f_R]
[__inference_weighted_sum_by_dot_product_1_layer_call_and_return_conditional_losses_176463602/
-weighted_sum_by_dot_product_1/PartitionedCall?
dropout_3/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_176463672
dropout_3/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall6weighted_sum_by_dot_product_1/PartitionedCall:output:0"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????f* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_176463762
concatenate_1/PartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_9_17646834dense_9_17646836*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_176463892!
dense_9/StatefulPartitionedCall?
dropout_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_176464002
dropout_4/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_10_17646840dense_10_17646842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_10_layer_call_and_return_conditional_losses_176464132"
 dense_10/StatefulPartitionedCall?
dropout_5/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_176464242
dropout_5/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_11_17646846dense_11_17646848*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_11_layer_call_and_return_conditional_losses_176464362"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
input_59:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_60
?D
?
E__inference_model_5_layer_call_and_return_conditional_losses_17646898
input_59
input_60-
time_distributed_2_17646856:2)
time_distributed_2_17646858:2-
time_distributed_3_17646863:2)
time_distributed_3_17646865:"
dense_8_17646871:P
dense_8_17646873:P"
dense_9_17646880:fZ
dense_9_17646882:Z#
dense_10_17646886:Z
dense_10_17646888:#
dense_11_17646892:
dense_11_17646894:
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?*time_distributed_2/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCallinput_59time_distributed_2_17646856time_distributed_2_17646858*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_176466632,
*time_distributed_2/StatefulPartitionedCall?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshapeinput_59)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
time_distributed_2/Reshape?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0time_distributed_3_17646863time_distributed_3_17646865*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_176466302,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
time_distributed_3/Reshape?
flatten_1/PartitionedCallPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_176463222
flatten_1/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCallinput_60dense_8_17646871dense_8_17646873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_176463352!
dense_8/StatefulPartitionedCall?
softmax_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_176463462
softmax_1/PartitionedCall?
-weighted_sum_by_dot_product_1/PartitionedCallPartitionedCallinput_59"softmax_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *d
f_R]
[__inference_weighted_sum_by_dot_product_1_layer_call_and_return_conditional_losses_176463602/
-weighted_sum_by_dot_product_1/PartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_176465732#
!dropout_3/StatefulPartitionedCall?
concatenate_1/PartitionedCallPartitionedCall6weighted_sum_by_dot_product_1/PartitionedCall:output:0*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????f* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_176463762
concatenate_1/PartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_9_17646880dense_9_17646882*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_176463892!
dense_9/StatefulPartitionedCall?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_176465332#
!dropout_4/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_10_17646886dense_10_17646888*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_10_layer_call_and_return_conditional_losses_176464132"
 dense_10/StatefulPartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_176465002#
!dropout_5/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_11_17646892dense_11_17646894*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_11_layer_call_and_return_conditional_losses_176464362"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
input_59:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_60
?

?
E__inference_dense_6_layer_call_and_return_conditional_losses_17647609

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_7_layer_call_fn_17647618

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_176461492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
e
G__inference_dropout_5_layer_call_and_return_conditional_losses_17646424

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_5_layer_call_fn_17647548

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_176464242
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647241

inputs8
&dense_6_matmul_readvariableop_resource:25
'dense_6_biasadd_readvariableop_resource:2
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_6/Reluq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Relu:activations:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????22
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
5__inference_time_distributed_2_layer_call_fn_17647179

inputs
unknown:2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_176460692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
5__inference_time_distributed_3_layer_call_fn_17647298

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_176463082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????$2
 
_user_specified_nameinputs
?

?
E__inference_dense_8_layer_call_and_return_conditional_losses_17647418

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_7_layer_call_and_return_conditional_losses_17647628

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_11_layer_call_and_return_conditional_losses_17646436

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647256

inputs8
&dense_6_matmul_readvariableop_resource:25
'dense_6_biasadd_readvariableop_resource:2
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_6/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$   2   2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$22
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647328

inputs8
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshape?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulReshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_7/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????2: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
5__inference_time_distributed_2_layer_call_fn_17647188

inputs
unknown:2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_176462872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs
??
?
$__inference__traced_restore_17647944
file_prefix1
assignvariableop_dense_8_kernel:P-
assignvariableop_1_dense_8_bias:P3
!assignvariableop_2_dense_9_kernel:fZ-
assignvariableop_3_dense_9_bias:Z4
"assignvariableop_4_dense_10_kernel:Z.
 assignvariableop_5_dense_10_bias:4
"assignvariableop_6_dense_11_kernel:.
 assignvariableop_7_dense_11_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: ?
-assignvariableop_13_time_distributed_2_kernel:29
+assignvariableop_14_time_distributed_2_bias:2?
-assignvariableop_15_time_distributed_3_kernel:29
+assignvariableop_16_time_distributed_3_bias:#
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: %
assignvariableop_21_total_2: %
assignvariableop_22_count_2: ;
)assignvariableop_23_adam_dense_8_kernel_m:P5
'assignvariableop_24_adam_dense_8_bias_m:P;
)assignvariableop_25_adam_dense_9_kernel_m:fZ5
'assignvariableop_26_adam_dense_9_bias_m:Z<
*assignvariableop_27_adam_dense_10_kernel_m:Z6
(assignvariableop_28_adam_dense_10_bias_m:<
*assignvariableop_29_adam_dense_11_kernel_m:6
(assignvariableop_30_adam_dense_11_bias_m:F
4assignvariableop_31_adam_time_distributed_2_kernel_m:2@
2assignvariableop_32_adam_time_distributed_2_bias_m:2F
4assignvariableop_33_adam_time_distributed_3_kernel_m:2@
2assignvariableop_34_adam_time_distributed_3_bias_m:;
)assignvariableop_35_adam_dense_8_kernel_v:P5
'assignvariableop_36_adam_dense_8_bias_v:P;
)assignvariableop_37_adam_dense_9_kernel_v:fZ5
'assignvariableop_38_adam_dense_9_bias_v:Z<
*assignvariableop_39_adam_dense_10_kernel_v:Z6
(assignvariableop_40_adam_dense_10_bias_v:<
*assignvariableop_41_adam_dense_11_kernel_v:6
(assignvariableop_42_adam_dense_11_bias_v:F
4assignvariableop_43_adam_time_distributed_2_kernel_v:2@
2assignvariableop_44_adam_time_distributed_2_bias_v:2F
4assignvariableop_45_adam_time_distributed_3_kernel_v:2@
2assignvariableop_46_adam_time_distributed_3_bias_v:
identity_48??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*?
value?B?0B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_10_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_10_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_11_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_11_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp-assignvariableop_13_time_distributed_2_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp+assignvariableop_14_time_distributed_2_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_time_distributed_3_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_time_distributed_3_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_2Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_8_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_8_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_9_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_9_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_10_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_10_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_11_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_11_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_time_distributed_2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp2assignvariableop_32_adam_time_distributed_2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_time_distributed_3_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp2assignvariableop_34_adam_time_distributed_3_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_8_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_8_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_9_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_9_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_10_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_10_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_11_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_11_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp4assignvariableop_43_adam_time_distributed_2_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp2assignvariableop_44_adam_time_distributed_2_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_time_distributed_3_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_time_distributed_3_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_469
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_47?
Identity_48IdentityIdentity_47:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_48"#
identity_48Identity_48:output:0*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
f
G__inference_dropout_3_layer_call_and_return_conditional_losses_17646573

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *_u??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????P2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????P*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?i;2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????P2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????P2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????P:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
*__inference_model_5_layer_call_fn_17646996
inputs_0
inputs_1
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
	unknown_3:P
	unknown_4:P
	unknown_5:fZ
	unknown_6:Z
	unknown_7:Z
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_5_layer_call_and_return_conditional_losses_176467492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
f
G__inference_dropout_4_layer_call_and_return_conditional_losses_17647523

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?@??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????Z2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????Z*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *f+S>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????Z2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????Z2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Z2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????Z2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????Z:O K
'
_output_shapes
:?????????Z
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17646308

inputs8
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshape?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulReshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$      2
Reshape_1/shape?
	Reshape_1Reshapedense_7/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$2: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????$2
 
_user_specified_nameinputs
?s
?
#__inference__wrapped_model_17645985
input_59
input_60S
Amodel_5_time_distributed_2_dense_6_matmul_readvariableop_resource:2P
Bmodel_5_time_distributed_2_dense_6_biasadd_readvariableop_resource:2S
Amodel_5_time_distributed_3_dense_7_matmul_readvariableop_resource:2P
Bmodel_5_time_distributed_3_dense_7_biasadd_readvariableop_resource:@
.model_5_dense_8_matmul_readvariableop_resource:P=
/model_5_dense_8_biasadd_readvariableop_resource:P@
.model_5_dense_9_matmul_readvariableop_resource:fZ=
/model_5_dense_9_biasadd_readvariableop_resource:ZA
/model_5_dense_10_matmul_readvariableop_resource:Z>
0model_5_dense_10_biasadd_readvariableop_resource:A
/model_5_dense_11_matmul_readvariableop_resource:>
0model_5_dense_11_biasadd_readvariableop_resource:
identity??'model_5/dense_10/BiasAdd/ReadVariableOp?&model_5/dense_10/MatMul/ReadVariableOp?'model_5/dense_11/BiasAdd/ReadVariableOp?&model_5/dense_11/MatMul/ReadVariableOp?&model_5/dense_8/BiasAdd/ReadVariableOp?%model_5/dense_8/MatMul/ReadVariableOp?&model_5/dense_9/BiasAdd/ReadVariableOp?%model_5/dense_9/MatMul/ReadVariableOp?9model_5/time_distributed_2/dense_6/BiasAdd/ReadVariableOp?8model_5/time_distributed_2/dense_6/MatMul/ReadVariableOp?9model_5/time_distributed_3/dense_7/BiasAdd/ReadVariableOp?8model_5/time_distributed_3/dense_7/MatMul/ReadVariableOp?
(model_5/time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2*
(model_5/time_distributed_2/Reshape/shape?
"model_5/time_distributed_2/ReshapeReshapeinput_591model_5/time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2$
"model_5/time_distributed_2/Reshape?
8model_5/time_distributed_2/dense_6/MatMul/ReadVariableOpReadVariableOpAmodel_5_time_distributed_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02:
8model_5/time_distributed_2/dense_6/MatMul/ReadVariableOp?
)model_5/time_distributed_2/dense_6/MatMulMatMul+model_5/time_distributed_2/Reshape:output:0@model_5/time_distributed_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22+
)model_5/time_distributed_2/dense_6/MatMul?
9model_5/time_distributed_2/dense_6/BiasAdd/ReadVariableOpReadVariableOpBmodel_5_time_distributed_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02;
9model_5/time_distributed_2/dense_6/BiasAdd/ReadVariableOp?
*model_5/time_distributed_2/dense_6/BiasAddBiasAdd3model_5/time_distributed_2/dense_6/MatMul:product:0Amodel_5/time_distributed_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22,
*model_5/time_distributed_2/dense_6/BiasAdd?
'model_5/time_distributed_2/dense_6/ReluRelu3model_5/time_distributed_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22)
'model_5/time_distributed_2/dense_6/Relu?
*model_5/time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$   2   2,
*model_5/time_distributed_2/Reshape_1/shape?
$model_5/time_distributed_2/Reshape_1Reshape5model_5/time_distributed_2/dense_6/Relu:activations:03model_5/time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$22&
$model_5/time_distributed_2/Reshape_1?
*model_5/time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2,
*model_5/time_distributed_2/Reshape_2/shape?
$model_5/time_distributed_2/Reshape_2Reshapeinput_593model_5/time_distributed_2/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2&
$model_5/time_distributed_2/Reshape_2?
(model_5/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2*
(model_5/time_distributed_3/Reshape/shape?
"model_5/time_distributed_3/ReshapeReshape-model_5/time_distributed_2/Reshape_1:output:01model_5/time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22$
"model_5/time_distributed_3/Reshape?
8model_5/time_distributed_3/dense_7/MatMul/ReadVariableOpReadVariableOpAmodel_5_time_distributed_3_dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02:
8model_5/time_distributed_3/dense_7/MatMul/ReadVariableOp?
)model_5/time_distributed_3/dense_7/MatMulMatMul+model_5/time_distributed_3/Reshape:output:0@model_5/time_distributed_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2+
)model_5/time_distributed_3/dense_7/MatMul?
9model_5/time_distributed_3/dense_7/BiasAdd/ReadVariableOpReadVariableOpBmodel_5_time_distributed_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02;
9model_5/time_distributed_3/dense_7/BiasAdd/ReadVariableOp?
*model_5/time_distributed_3/dense_7/BiasAddBiasAdd3model_5/time_distributed_3/dense_7/MatMul:product:0Amodel_5/time_distributed_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2,
*model_5/time_distributed_3/dense_7/BiasAdd?
*model_5/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$      2,
*model_5/time_distributed_3/Reshape_1/shape?
$model_5/time_distributed_3/Reshape_1Reshape3model_5/time_distributed_3/dense_7/BiasAdd:output:03model_5/time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$2&
$model_5/time_distributed_3/Reshape_1?
*model_5/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2,
*model_5/time_distributed_3/Reshape_2/shape?
$model_5/time_distributed_3/Reshape_2Reshape-model_5/time_distributed_2/Reshape_1:output:03model_5/time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????22&
$model_5/time_distributed_3/Reshape_2?
model_5/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????$   2
model_5/flatten_1/Const?
model_5/flatten_1/ReshapeReshape-model_5/time_distributed_3/Reshape_1:output:0 model_5/flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????$2
model_5/flatten_1/Reshape?
%model_5/dense_8/MatMul/ReadVariableOpReadVariableOp.model_5_dense_8_matmul_readvariableop_resource*
_output_shapes

:P*
dtype02'
%model_5/dense_8/MatMul/ReadVariableOp?
model_5/dense_8/MatMulMatMulinput_60-model_5/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2
model_5/dense_8/MatMul?
&model_5/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_5_dense_8_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02(
&model_5/dense_8/BiasAdd/ReadVariableOp?
model_5/dense_8/BiasAddBiasAdd model_5/dense_8/MatMul:product:0.model_5/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2
model_5/dense_8/BiasAdd?
model_5/dense_8/ReluRelu model_5/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
model_5/dense_8/Relu?
model_5/softmax_1/SoftmaxSoftmax"model_5/flatten_1/Reshape:output:0*
T0*'
_output_shapes
:?????????$2
model_5/softmax_1/Softmax?
4model_5/weighted_sum_by_dot_product_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :26
4model_5/weighted_sum_by_dot_product_1/ExpandDims/dim?
0model_5/weighted_sum_by_dot_product_1/ExpandDims
ExpandDims#model_5/softmax_1/Softmax:softmax:0=model_5/weighted_sum_by_dot_product_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????$22
0model_5/weighted_sum_by_dot_product_1/ExpandDims?
4model_5/weighted_sum_by_dot_product_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          26
4model_5/weighted_sum_by_dot_product_1/transpose/perm?
/model_5/weighted_sum_by_dot_product_1/transpose	Transposeinput_59=model_5/weighted_sum_by_dot_product_1/transpose/perm:output:0*
T0*+
_output_shapes
:?????????$21
/model_5/weighted_sum_by_dot_product_1/transpose?
,model_5/weighted_sum_by_dot_product_1/MatMulBatchMatMulV23model_5/weighted_sum_by_dot_product_1/transpose:y:09model_5/weighted_sum_by_dot_product_1/ExpandDims:output:0*
T0*+
_output_shapes
:?????????2.
,model_5/weighted_sum_by_dot_product_1/MatMul?
+model_5/weighted_sum_by_dot_product_1/ShapeShape5model_5/weighted_sum_by_dot_product_1/MatMul:output:0*
T0*
_output_shapes
:2-
+model_5/weighted_sum_by_dot_product_1/Shape?
-model_5/weighted_sum_by_dot_product_1/SqueezeSqueeze5model_5/weighted_sum_by_dot_product_1/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims

?????????2/
-model_5/weighted_sum_by_dot_product_1/Squeeze?
model_5/dropout_3/IdentityIdentity"model_5/dense_8/Relu:activations:0*
T0*'
_output_shapes
:?????????P2
model_5/dropout_3/Identity?
!model_5/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_5/concatenate_1/concat/axis?
model_5/concatenate_1/concatConcatV26model_5/weighted_sum_by_dot_product_1/Squeeze:output:0#model_5/dropout_3/Identity:output:0*model_5/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????f2
model_5/concatenate_1/concat?
%model_5/dense_9/MatMul/ReadVariableOpReadVariableOp.model_5_dense_9_matmul_readvariableop_resource*
_output_shapes

:fZ*
dtype02'
%model_5/dense_9/MatMul/ReadVariableOp?
model_5/dense_9/MatMulMatMul%model_5/concatenate_1/concat:output:0-model_5/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2
model_5/dense_9/MatMul?
&model_5/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_5_dense_9_biasadd_readvariableop_resource*
_output_shapes
:Z*
dtype02(
&model_5/dense_9/BiasAdd/ReadVariableOp?
model_5/dense_9/BiasAddBiasAdd model_5/dense_9/MatMul:product:0.model_5/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2
model_5/dense_9/BiasAdd?
model_5/dense_9/ReluRelu model_5/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????Z2
model_5/dense_9/Relu?
model_5/dropout_4/IdentityIdentity"model_5/dense_9/Relu:activations:0*
T0*'
_output_shapes
:?????????Z2
model_5/dropout_4/Identity?
&model_5/dense_10/MatMul/ReadVariableOpReadVariableOp/model_5_dense_10_matmul_readvariableop_resource*
_output_shapes

:Z*
dtype02(
&model_5/dense_10/MatMul/ReadVariableOp?
model_5/dense_10/MatMulMatMul#model_5/dropout_4/Identity:output:0.model_5/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_5/dense_10/MatMul?
'model_5/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_5_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_5/dense_10/BiasAdd/ReadVariableOp?
model_5/dense_10/BiasAddBiasAdd!model_5/dense_10/MatMul:product:0/model_5/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_5/dense_10/BiasAdd?
model_5/dense_10/ReluRelu!model_5/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_5/dense_10/Relu?
model_5/dropout_5/IdentityIdentity#model_5/dense_10/Relu:activations:0*
T0*'
_output_shapes
:?????????2
model_5/dropout_5/Identity?
&model_5/dense_11/MatMul/ReadVariableOpReadVariableOp/model_5_dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&model_5/dense_11/MatMul/ReadVariableOp?
model_5/dense_11/MatMulMatMul#model_5/dropout_5/Identity:output:0.model_5/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_5/dense_11/MatMul?
'model_5/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_5_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_5/dense_11/BiasAdd/ReadVariableOp?
model_5/dense_11/BiasAddBiasAdd!model_5/dense_11/MatMul:product:0/model_5/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_5/dense_11/BiasAdd?
IdentityIdentity!model_5/dense_11/BiasAdd:output:0(^model_5/dense_10/BiasAdd/ReadVariableOp'^model_5/dense_10/MatMul/ReadVariableOp(^model_5/dense_11/BiasAdd/ReadVariableOp'^model_5/dense_11/MatMul/ReadVariableOp'^model_5/dense_8/BiasAdd/ReadVariableOp&^model_5/dense_8/MatMul/ReadVariableOp'^model_5/dense_9/BiasAdd/ReadVariableOp&^model_5/dense_9/MatMul/ReadVariableOp:^model_5/time_distributed_2/dense_6/BiasAdd/ReadVariableOp9^model_5/time_distributed_2/dense_6/MatMul/ReadVariableOp:^model_5/time_distributed_3/dense_7/BiasAdd/ReadVariableOp9^model_5/time_distributed_3/dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 2R
'model_5/dense_10/BiasAdd/ReadVariableOp'model_5/dense_10/BiasAdd/ReadVariableOp2P
&model_5/dense_10/MatMul/ReadVariableOp&model_5/dense_10/MatMul/ReadVariableOp2R
'model_5/dense_11/BiasAdd/ReadVariableOp'model_5/dense_11/BiasAdd/ReadVariableOp2P
&model_5/dense_11/MatMul/ReadVariableOp&model_5/dense_11/MatMul/ReadVariableOp2P
&model_5/dense_8/BiasAdd/ReadVariableOp&model_5/dense_8/BiasAdd/ReadVariableOp2N
%model_5/dense_8/MatMul/ReadVariableOp%model_5/dense_8/MatMul/ReadVariableOp2P
&model_5/dense_9/BiasAdd/ReadVariableOp&model_5/dense_9/BiasAdd/ReadVariableOp2N
%model_5/dense_9/MatMul/ReadVariableOp%model_5/dense_9/MatMul/ReadVariableOp2v
9model_5/time_distributed_2/dense_6/BiasAdd/ReadVariableOp9model_5/time_distributed_2/dense_6/BiasAdd/ReadVariableOp2t
8model_5/time_distributed_2/dense_6/MatMul/ReadVariableOp8model_5/time_distributed_2/dense_6/MatMul/ReadVariableOp2v
9model_5/time_distributed_3/dense_7/BiasAdd/ReadVariableOp9model_5/time_distributed_3/dense_7/BiasAdd/ReadVariableOp2t
8model_5/time_distributed_3/dense_7/MatMul/ReadVariableOp8model_5/time_distributed_3/dense_7/MatMul/ReadVariableOp:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
input_59:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_60
?e
?

E__inference_model_5_layer_call_and_return_conditional_losses_17647068
inputs_0
inputs_1K
9time_distributed_2_dense_6_matmul_readvariableop_resource:2H
:time_distributed_2_dense_6_biasadd_readvariableop_resource:2K
9time_distributed_3_dense_7_matmul_readvariableop_resource:2H
:time_distributed_3_dense_7_biasadd_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource:P5
'dense_8_biasadd_readvariableop_resource:P8
&dense_9_matmul_readvariableop_resource:fZ5
'dense_9_biasadd_readvariableop_resource:Z9
'dense_10_matmul_readvariableop_resource:Z6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?1time_distributed_2/dense_6/BiasAdd/ReadVariableOp?0time_distributed_2/dense_6/MatMul/ReadVariableOp?1time_distributed_3/dense_7/BiasAdd/ReadVariableOp?0time_distributed_3/dense_7/MatMul/ReadVariableOp?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshapeinputs_0)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
time_distributed_2/Reshape?
0time_distributed_2/dense_6/MatMul/ReadVariableOpReadVariableOp9time_distributed_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype022
0time_distributed_2/dense_6/MatMul/ReadVariableOp?
!time_distributed_2/dense_6/MatMulMatMul#time_distributed_2/Reshape:output:08time_distributed_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22#
!time_distributed_2/dense_6/MatMul?
1time_distributed_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype023
1time_distributed_2/dense_6/BiasAdd/ReadVariableOp?
"time_distributed_2/dense_6/BiasAddBiasAdd+time_distributed_2/dense_6/MatMul:product:09time_distributed_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22$
"time_distributed_2/dense_6/BiasAdd?
time_distributed_2/dense_6/ReluRelu+time_distributed_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22!
time_distributed_2/dense_6/Relu?
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$   2   2$
"time_distributed_2/Reshape_1/shape?
time_distributed_2/Reshape_1Reshape-time_distributed_2/dense_6/Relu:activations:0+time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$22
time_distributed_2/Reshape_1?
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2$
"time_distributed_2/Reshape_2/shape?
time_distributed_2/Reshape_2Reshapeinputs_0+time_distributed_2/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2
time_distributed_2/Reshape_2?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape%time_distributed_2/Reshape_1:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
time_distributed_3/Reshape?
0time_distributed_3/dense_7/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype022
0time_distributed_3/dense_7/MatMul/ReadVariableOp?
!time_distributed_3/dense_7/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!time_distributed_3/dense_7/MatMul?
1time_distributed_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_3/dense_7/BiasAdd/ReadVariableOp?
"time_distributed_3/dense_7/BiasAddBiasAdd+time_distributed_3/dense_7/MatMul:product:09time_distributed_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"time_distributed_3/dense_7/BiasAdd?
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$      2$
"time_distributed_3/Reshape_1/shape?
time_distributed_3/Reshape_1Reshape+time_distributed_3/dense_7/BiasAdd:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$2
time_distributed_3/Reshape_1?
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2$
"time_distributed_3/Reshape_2/shape?
time_distributed_3/Reshape_2Reshape%time_distributed_2/Reshape_1:output:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????22
time_distributed_3/Reshape_2s
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????$   2
flatten_1/Const?
flatten_1/ReshapeReshape%time_distributed_3/Reshape_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????$2
flatten_1/Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:P*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulinputs_1%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2
dense_8/BiasAddp
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_8/Relu
softmax_1/SoftmaxSoftmaxflatten_1/Reshape:output:0*
T0*'
_output_shapes
:?????????$2
softmax_1/Softmax?
,weighted_sum_by_dot_product_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,weighted_sum_by_dot_product_1/ExpandDims/dim?
(weighted_sum_by_dot_product_1/ExpandDims
ExpandDimssoftmax_1/Softmax:softmax:05weighted_sum_by_dot_product_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????$2*
(weighted_sum_by_dot_product_1/ExpandDims?
,weighted_sum_by_dot_product_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,weighted_sum_by_dot_product_1/transpose/perm?
'weighted_sum_by_dot_product_1/transpose	Transposeinputs_05weighted_sum_by_dot_product_1/transpose/perm:output:0*
T0*+
_output_shapes
:?????????$2)
'weighted_sum_by_dot_product_1/transpose?
$weighted_sum_by_dot_product_1/MatMulBatchMatMulV2+weighted_sum_by_dot_product_1/transpose:y:01weighted_sum_by_dot_product_1/ExpandDims:output:0*
T0*+
_output_shapes
:?????????2&
$weighted_sum_by_dot_product_1/MatMul?
#weighted_sum_by_dot_product_1/ShapeShape-weighted_sum_by_dot_product_1/MatMul:output:0*
T0*
_output_shapes
:2%
#weighted_sum_by_dot_product_1/Shape?
%weighted_sum_by_dot_product_1/SqueezeSqueeze-weighted_sum_by_dot_product_1/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims

?????????2'
%weighted_sum_by_dot_product_1/Squeeze?
dropout_3/IdentityIdentitydense_8/Relu:activations:0*
T0*'
_output_shapes
:?????????P2
dropout_3/Identityx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2.weighted_sum_by_dot_product_1/Squeeze:output:0dropout_3/Identity:output:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????f2
concatenate_1/concat?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:fZ*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulconcatenate_1/concat:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:Z*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2
dense_9/BiasAddp
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????Z2
dense_9/Relu?
dropout_4/IdentityIdentitydense_9/Relu:activations:0*
T0*'
_output_shapes
:?????????Z2
dropout_4/Identity?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:Z*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMuldropout_4/Identity:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/BiasAdds
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_10/Relu?
dropout_5/IdentityIdentitydense_10/Relu:activations:0*
T0*'
_output_shapes
:?????????2
dropout_5/Identity?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMuldropout_5/Identity:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAdd?
IdentityIdentitydense_11/BiasAdd:output:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp2^time_distributed_2/dense_6/BiasAdd/ReadVariableOp1^time_distributed_2/dense_6/MatMul/ReadVariableOp2^time_distributed_3/dense_7/BiasAdd/ReadVariableOp1^time_distributed_3/dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2f
1time_distributed_2/dense_6/BiasAdd/ReadVariableOp1time_distributed_2/dense_6/BiasAdd/ReadVariableOp2d
0time_distributed_2/dense_6/MatMul/ReadVariableOp0time_distributed_2/dense_6/MatMul/ReadVariableOp2f
1time_distributed_3/dense_7/BiasAdd/ReadVariableOp1time_distributed_3/dense_7/BiasAdd/ReadVariableOp2d
0time_distributed_3/dense_7/MatMul/ReadVariableOp0time_distributed_3/dense_7/MatMul/ReadVariableOp:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17646663

inputs8
&dense_6_matmul_readvariableop_resource:25
'dense_6_biasadd_readvariableop_resource:2
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_6/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$   2   2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$22
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
e
,__inference_dropout_3_layer_call_fn_17647446

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_176465732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????P22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
c
G__inference_flatten_1_layer_call_and_return_conditional_losses_17646322

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????$   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????$2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????$:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
e
,__inference_dropout_4_layer_call_fn_17647506

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_176465332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????Z2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????Z22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????Z
 
_user_specified_nameinputs
?

?
E__inference_dense_8_layer_call_and_return_conditional_losses_17646335

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647219

inputs8
&dense_6_matmul_readvariableop_resource:25
'dense_6_biasadd_readvariableop_resource:2
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_6/Reluq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Relu:activations:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????22
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17646021

inputs"
dense_6_17646011:2
dense_6_17646013:2
identity??dense_6/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshape?
dense_6/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_6_17646011dense_6_17646013*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_176460102!
dense_6/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_6/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????22
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_6/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
5__inference_time_distributed_2_layer_call_fn_17647170

inputs
unknown:2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_176460212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647377

inputs8
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshape?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulReshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$      2
Reshape_1/shape?
	Reshape_1Reshapedense_7/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$2: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????$2
 
_user_specified_nameinputs
?
c
G__inference_softmax_1_layer_call_and_return_conditional_losses_17647398

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????$2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????$:O K
'
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
+__inference_dense_10_layer_call_fn_17647532

inputs
unknown:Z
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_10_layer_call_and_return_conditional_losses_176464132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????Z: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????Z
 
_user_specified_nameinputs
?
H
,__inference_softmax_1_layer_call_fn_17647393

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_176463462
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????$:O K
'
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17646287

inputs8
&dense_6_matmul_readvariableop_resource:25
'dense_6_biasadd_readvariableop_resource:2
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_6/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$   2   2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$22
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs
?

?
E__inference_dense_6_layer_call_and_return_conditional_losses_17646010

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
\
0__inference_concatenate_1_layer_call_fn_17647469
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????f* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_176463762
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????f2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????P:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????P
"
_user_specified_name
inputs/1
?

|
[__inference_weighted_sum_by_dot_product_1_layer_call_and_return_conditional_losses_17647436
info
a
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dimx

ExpandDims
ExpandDimsaExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????$2

ExpandDimsu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permx
	transpose	Transposeinfotranspose/perm:output:0*
T0*+
_output_shapes
:?????????$2
	transpose{
MatMulBatchMatMulV2transpose:y:0ExpandDims:output:0*
T0*+
_output_shapes
:?????????2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shape?
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims

?????????2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:?????????$:?????????$:Q M
+
_output_shapes
:?????????$

_user_specified_nameinfo:JF
'
_output_shapes
:?????????$

_user_specified_namea
?
a
@__inference_weighted_sum_by_dot_product_1_layer_call_fn_17647424
info
a
identity?
PartitionedCallPartitionedCallinfoa*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *d
f_R]
[__inference_weighted_sum_by_dot_product_1_layer_call_and_return_conditional_losses_176463602
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:?????????$:?????????$:Q M
+
_output_shapes
:?????????$

_user_specified_nameinfo:JF
'
_output_shapes
:?????????$

_user_specified_namea
?
?
*__inference_dense_6_layer_call_fn_17647598

inputs
unknown:2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_176460102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_dense_10_layer_call_and_return_conditional_losses_17647543

inputs0
matmul_readvariableop_resource:Z-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Z*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????Z: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????Z
 
_user_specified_nameinputs
?
?
&__inference_signature_wrapper_17646936
input_59
input_60
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
	unknown_3:P
	unknown_4:P
	unknown_5:fZ
	unknown_6:Z
	unknown_7:Z
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_59input_60unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_176459852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
input_59:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_60
?
H
,__inference_flatten_1_layer_call_fn_17647382

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_176463222
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????$:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
c
G__inference_softmax_1_layer_call_and_return_conditional_losses_17646346

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????$2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????$:O K
'
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
e
,__inference_dropout_5_layer_call_fn_17647553

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_176465002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_8_layer_call_fn_17647407

inputs
unknown:P
	unknown_0:P
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_176463352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_time_distributed_3_layer_call_fn_17647307

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_176466302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????$2
 
_user_specified_nameinputs
?
w
K__inference_concatenate_1_layer_call_and_return_conditional_losses_17647476
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????f2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????f2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????P:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????P
"
_user_specified_name
inputs/1
?
?
*__inference_dense_9_layer_call_fn_17647485

inputs
unknown:fZ
	unknown_0:Z
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_176463892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????Z2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????f: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????f
 
_user_specified_nameinputs
?
f
G__inference_dropout_5_layer_call_and_return_conditional_losses_17646500

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?β?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *|?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

|
[__inference_weighted_sum_by_dot_product_1_layer_call_and_return_conditional_losses_17646360
info
a
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dimx

ExpandDims
ExpandDimsaExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????$2

ExpandDimsu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permx
	transpose	Transposeinfotranspose/perm:output:0*
T0*+
_output_shapes
:?????????$2
	transpose{
MatMulBatchMatMulV2transpose:y:0ExpandDims:output:0*
T0*+
_output_shapes
:?????????2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shape?
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims

?????????2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:?????????$:?????????$:Q M
+
_output_shapes
:?????????$

_user_specified_nameinfo:JF
'
_output_shapes
:?????????$

_user_specified_namea
?
?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17646160

inputs"
dense_7_17646150:2
dense_7_17646152:
identity??dense_7/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshape?
dense_7/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_7_17646150dense_7_17646152*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_176461492!
dense_7/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_7/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_7/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????2: : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
f
G__inference_dropout_5_layer_call_and_return_conditional_losses_17647570

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?β?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *|?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_time_distributed_3_layer_call_fn_17647280

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_176461602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_model_5_layer_call_fn_17646966
inputs_0
inputs_1
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
	unknown_3:P
	unknown_4:P
	unknown_5:fZ
	unknown_6:Z
	unknown_7:Z
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_5_layer_call_and_return_conditional_losses_176464432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
??
?
E__inference_model_5_layer_call_and_return_conditional_losses_17646443

inputs
inputs_1-
time_distributed_2_17646288:2)
time_distributed_2_17646290:2-
time_distributed_3_17646309:2)
time_distributed_3_17646311:"
dense_8_17646336:P
dense_8_17646338:P"
dense_9_17646390:fZ
dense_9_17646392:Z#
dense_10_17646414:Z
dense_10_17646416:#
dense_11_17646437:
dense_11_17646439:
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?*time_distributed_2/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_17646288time_distributed_2_17646290*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_176462872,
*time_distributed_2/StatefulPartitionedCall?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshapeinputs)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
time_distributed_2/Reshape?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0time_distributed_3_17646309time_distributed_3_17646311*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_176463082,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
time_distributed_3/Reshape?
flatten_1/PartitionedCallPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_176463222
flatten_1/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCallinputs_1dense_8_17646336dense_8_17646338*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_176463352!
dense_8/StatefulPartitionedCall?
softmax_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_176463462
softmax_1/PartitionedCall?
-weighted_sum_by_dot_product_1/PartitionedCallPartitionedCallinputs"softmax_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *d
f_R]
[__inference_weighted_sum_by_dot_product_1_layer_call_and_return_conditional_losses_176463602/
-weighted_sum_by_dot_product_1/PartitionedCall?
dropout_3/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_176463672
dropout_3/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall6weighted_sum_by_dot_product_1/PartitionedCall:output:0"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????f* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_176463762
concatenate_1/PartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_9_17646390dense_9_17646392*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_176463892!
dense_9/StatefulPartitionedCall?
dropout_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????Z* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_176464002
dropout_4/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_10_17646414dense_10_17646416*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_10_layer_call_and_return_conditional_losses_176464132"
 dense_10/StatefulPartitionedCall?
dropout_5/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_176464242
dropout_5/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_11_17646437dense_11_17646439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_11_layer_call_and_return_conditional_losses_176464362"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_17647451

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????P2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????P2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????P:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
H
,__inference_dropout_3_layer_call_fn_17647441

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_176463672
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????P:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?	
?
F__inference_dense_11_layer_call_and_return_conditional_losses_17647589

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_4_layer_call_and_return_conditional_losses_17646533

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?@??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????Z2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????Z*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *f+S>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????Z2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????Z2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Z2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????Z2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????Z:O K
'
_output_shapes
:?????????Z
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17646208

inputs"
dense_7_17646198:2
dense_7_17646200:
identity??dense_7/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshape?
dense_7/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_7_17646198dense_7_17646200*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_176461492!
dense_7/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_7/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_7/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????2: : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647363

inputs8
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshape?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulReshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$      2
Reshape_1/shape?
	Reshape_1Reshapedense_7/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$2: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????$2
 
_user_specified_nameinputs
?
e
G__inference_dropout_4_layer_call_and_return_conditional_losses_17647511

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????Z2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????Z2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????Z:O K
'
_output_shapes
:?????????Z
 
_user_specified_nameinputs
?
?
+__inference_dense_11_layer_call_fn_17647579

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_11_layer_call_and_return_conditional_losses_176464362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17646630

inputs8
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshape?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulReshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$      2
Reshape_1/shape?
	Reshape_1Reshapedense_7/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$2: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????$2
 
_user_specified_nameinputs
?
?
*__inference_model_5_layer_call_fn_17646470
input_59
input_60
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
	unknown_3:P
	unknown_4:P
	unknown_5:fZ
	unknown_6:Z
	unknown_7:Z
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_59input_60unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_5_layer_call_and_return_conditional_losses_176464432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
input_59:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_60
?
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_17646367

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????P2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????P2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????P:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
*__inference_model_5_layer_call_fn_17646806
input_59
input_60
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
	unknown_3:P
	unknown_4:P
	unknown_5:fZ
	unknown_6:Z
	unknown_7:Z
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_59input_60unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_5_layer_call_and_return_conditional_losses_176467492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
input_59:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_60
?

?
E__inference_dense_9_layer_call_and_return_conditional_losses_17647496

inputs0
matmul_readvariableop_resource:fZ-
biasadd_readvariableop_resource:Z
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:fZ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Z*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????Z2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????f: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????f
 
_user_specified_nameinputs
?

?
E__inference_dense_9_layer_call_and_return_conditional_losses_17646389

inputs0
matmul_readvariableop_resource:fZ-
biasadd_readvariableop_resource:Z
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:fZ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Z*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????Z2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????f: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????f
 
_user_specified_nameinputs
?
c
G__inference_flatten_1_layer_call_and_return_conditional_losses_17647388

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????$   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????$2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????$:S O
+
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
f
G__inference_dropout_3_layer_call_and_return_conditional_losses_17647463

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *_u??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????P2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????P*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?i;2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????P2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????P2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????P:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647349

inputs8
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshape?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulReshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_7/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????2: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
??
?

E__inference_model_5_layer_call_and_return_conditional_losses_17647161
inputs_0
inputs_1K
9time_distributed_2_dense_6_matmul_readvariableop_resource:2H
:time_distributed_2_dense_6_biasadd_readvariableop_resource:2K
9time_distributed_3_dense_7_matmul_readvariableop_resource:2H
:time_distributed_3_dense_7_biasadd_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource:P5
'dense_8_biasadd_readvariableop_resource:P8
&dense_9_matmul_readvariableop_resource:fZ5
'dense_9_biasadd_readvariableop_resource:Z9
'dense_10_matmul_readvariableop_resource:Z6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?1time_distributed_2/dense_6/BiasAdd/ReadVariableOp?0time_distributed_2/dense_6/MatMul/ReadVariableOp?1time_distributed_3/dense_7/BiasAdd/ReadVariableOp?0time_distributed_3/dense_7/MatMul/ReadVariableOp?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshapeinputs_0)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
time_distributed_2/Reshape?
0time_distributed_2/dense_6/MatMul/ReadVariableOpReadVariableOp9time_distributed_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype022
0time_distributed_2/dense_6/MatMul/ReadVariableOp?
!time_distributed_2/dense_6/MatMulMatMul#time_distributed_2/Reshape:output:08time_distributed_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22#
!time_distributed_2/dense_6/MatMul?
1time_distributed_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype023
1time_distributed_2/dense_6/BiasAdd/ReadVariableOp?
"time_distributed_2/dense_6/BiasAddBiasAdd+time_distributed_2/dense_6/MatMul:product:09time_distributed_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22$
"time_distributed_2/dense_6/BiasAdd?
time_distributed_2/dense_6/ReluRelu+time_distributed_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22!
time_distributed_2/dense_6/Relu?
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$   2   2$
"time_distributed_2/Reshape_1/shape?
time_distributed_2/Reshape_1Reshape-time_distributed_2/dense_6/Relu:activations:0+time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$22
time_distributed_2/Reshape_1?
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2$
"time_distributed_2/Reshape_2/shape?
time_distributed_2/Reshape_2Reshapeinputs_0+time_distributed_2/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2
time_distributed_2/Reshape_2?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape%time_distributed_2/Reshape_1:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
time_distributed_3/Reshape?
0time_distributed_3/dense_7/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype022
0time_distributed_3/dense_7/MatMul/ReadVariableOp?
!time_distributed_3/dense_7/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!time_distributed_3/dense_7/MatMul?
1time_distributed_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_3/dense_7/BiasAdd/ReadVariableOp?
"time_distributed_3/dense_7/BiasAddBiasAdd+time_distributed_3/dense_7/MatMul:product:09time_distributed_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"time_distributed_3/dense_7/BiasAdd?
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????$      2$
"time_distributed_3/Reshape_1/shape?
time_distributed_3/Reshape_1Reshape+time_distributed_3/dense_7/BiasAdd:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????$2
time_distributed_3/Reshape_1?
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2$
"time_distributed_3/Reshape_2/shape?
time_distributed_3/Reshape_2Reshape%time_distributed_2/Reshape_1:output:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????22
time_distributed_3/Reshape_2s
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????$   2
flatten_1/Const?
flatten_1/ReshapeReshape%time_distributed_3/Reshape_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????$2
flatten_1/Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:P*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulinputs_1%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P2
dense_8/BiasAddp
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_8/Relu
softmax_1/SoftmaxSoftmaxflatten_1/Reshape:output:0*
T0*'
_output_shapes
:?????????$2
softmax_1/Softmax?
,weighted_sum_by_dot_product_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,weighted_sum_by_dot_product_1/ExpandDims/dim?
(weighted_sum_by_dot_product_1/ExpandDims
ExpandDimssoftmax_1/Softmax:softmax:05weighted_sum_by_dot_product_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????$2*
(weighted_sum_by_dot_product_1/ExpandDims?
,weighted_sum_by_dot_product_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,weighted_sum_by_dot_product_1/transpose/perm?
'weighted_sum_by_dot_product_1/transpose	Transposeinputs_05weighted_sum_by_dot_product_1/transpose/perm:output:0*
T0*+
_output_shapes
:?????????$2)
'weighted_sum_by_dot_product_1/transpose?
$weighted_sum_by_dot_product_1/MatMulBatchMatMulV2+weighted_sum_by_dot_product_1/transpose:y:01weighted_sum_by_dot_product_1/ExpandDims:output:0*
T0*+
_output_shapes
:?????????2&
$weighted_sum_by_dot_product_1/MatMul?
#weighted_sum_by_dot_product_1/ShapeShape-weighted_sum_by_dot_product_1/MatMul:output:0*
T0*
_output_shapes
:2%
#weighted_sum_by_dot_product_1/Shape?
%weighted_sum_by_dot_product_1/SqueezeSqueeze-weighted_sum_by_dot_product_1/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims

?????????2'
%weighted_sum_by_dot_product_1/Squeezew
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *_u??2
dropout_3/dropout/Const?
dropout_3/dropout/MulMuldense_8/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:?????????P2
dropout_3/dropout/Mul|
dropout_3/dropout/ShapeShapedense_8/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????P*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?i;2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????P2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????P2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dropout_3/dropout/Mul_1x
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2.weighted_sum_by_dot_product_1/Squeeze:output:0dropout_3/dropout/Mul_1:z:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????f2
concatenate_1/concat?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:fZ*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulconcatenate_1/concat:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:Z*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z2
dense_9/BiasAddp
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????Z2
dense_9/Reluw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?@??2
dropout_4/dropout/Const?
dropout_4/dropout/MulMuldense_9/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*'
_output_shapes
:?????????Z2
dropout_4/dropout/Mul|
dropout_4/dropout/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????Z*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform?
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *f+S>2"
 dropout_4/dropout/GreaterEqual/y?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????Z2 
dropout_4/dropout/GreaterEqual?
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????Z2
dropout_4/dropout/Cast?
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Z2
dropout_4/dropout/Mul_1?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:Z*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMuldropout_4/dropout/Mul_1:z:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/BiasAdds
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_10/Reluw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?β?2
dropout_5/dropout/Const?
dropout_5/dropout/MulMuldense_10/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_5/dropout/Mul}
dropout_5/dropout/ShapeShapedense_10/Relu:activations:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype020
.dropout_5/dropout/random_uniform/RandomUniform?
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *|?>2"
 dropout_5/dropout/GreaterEqual/y?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2 
dropout_5/dropout/GreaterEqual?
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_5/dropout/Cast?
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_5/dropout/Mul_1?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMuldropout_5/dropout/Mul_1:z:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAdd?
IdentityIdentitydense_11/BiasAdd:output:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp2^time_distributed_2/dense_6/BiasAdd/ReadVariableOp1^time_distributed_2/dense_6/MatMul/ReadVariableOp2^time_distributed_3/dense_7/BiasAdd/ReadVariableOp1^time_distributed_3/dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????$:?????????: : : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2f
1time_distributed_2/dense_6/BiasAdd/ReadVariableOp1time_distributed_2/dense_6/BiasAdd/ReadVariableOp2d
0time_distributed_2/dense_6/MatMul/ReadVariableOp0time_distributed_2/dense_6/MatMul/ReadVariableOp2f
1time_distributed_3/dense_7/BiasAdd/ReadVariableOp1time_distributed_3/dense_7/BiasAdd/ReadVariableOp2d
0time_distributed_3/dense_7/MatMul/ReadVariableOp0time_distributed_3/dense_7/MatMul/ReadVariableOp:U Q
+
_output_shapes
:?????????$
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
5__inference_time_distributed_3_layer_call_fn_17647289

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_176462082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
F__inference_dense_10_layer_call_and_return_conditional_losses_17646413

inputs0
matmul_readvariableop_resource:Z-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Z*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????Z: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????Z
 
_user_specified_nameinputs
?
e
G__inference_dropout_4_layer_call_and_return_conditional_losses_17646400

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????Z2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????Z2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????Z:O K
'
_output_shapes
:?????????Z
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
A
input_595
serving_default_input_59:0?????????$
=
input_601
serving_default_input_60:0?????????<
dense_110
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?k
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer_with_weights-5
layer-14
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?g
_tf_keras_network?f{"name": "model_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 36, 22]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_59"}, "name": "input_59", "inbound_nodes": []}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "name": "time_distributed_2", "inbound_nodes": [[["input_59", 0, 0, {}]]]}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "name": "time_distributed_3", "inbound_nodes": [[["time_distributed_2", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["time_distributed_3", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_60"}, "name": "input_60", "inbound_nodes": []}, {"class_name": "Softmax", "config": {"name": "softmax_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "softmax_1", "inbound_nodes": [[["flatten_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 80, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_8", "inbound_nodes": [[["input_60", 0, 0, {}]]]}, {"class_name": "WeightedSumByDotProduct", "config": {"name": "weighted_sum_by_dot_product_1", "trainable": true, "dtype": "float32"}, "name": "weighted_sum_by_dot_product_1", "inbound_nodes": [[["input_59", 0, 0, {"a": ["softmax_1", 0, 0]}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.0035691297373946773, "noise_shape": null, "seed": null}, "name": "dropout_3", "inbound_nodes": [[["dense_8", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["weighted_sum_by_dot_product_1", 0, 0, {}], ["dropout_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 90, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_9", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.20622023291903313, "noise_shape": null, "seed": null}, "name": "dropout_4", "inbound_nodes": [[["dense_9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_10", "inbound_nodes": [[["dropout_4", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.28414978580908434, "noise_shape": null, "seed": null}, "name": "dropout_5", "inbound_nodes": [[["dense_10", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_11", "inbound_nodes": [[["dropout_5", 0, 0, {}]]]}], "input_layers": [["input_59", 0, 0], ["input_60", 0, 0]], "output_layers": [["dense_11", 0, 0]]}, "shared_object_id": 29, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 36, 22]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 11]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 36, 22]}, {"class_name": "TensorShape", "items": [null, 11]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 36, 22]}, "float32", "input_59"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 11]}, "float32", "input_60"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 36, 22]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_59"}, "name": "input_59", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}}, "name": "time_distributed_2", "inbound_nodes": [[["input_59", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}}, "name": "time_distributed_3", "inbound_nodes": [[["time_distributed_2", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["time_distributed_3", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_60"}, "name": "input_60", "inbound_nodes": [], "shared_object_id": 10}, {"class_name": "Softmax", "config": {"name": "softmax_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "softmax_1", "inbound_nodes": [[["flatten_1", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 80, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_8", "inbound_nodes": [[["input_60", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "WeightedSumByDotProduct", "config": {"name": "weighted_sum_by_dot_product_1", "trainable": true, "dtype": "float32"}, "name": "weighted_sum_by_dot_product_1", "inbound_nodes": [[["input_59", 0, 0, {"a": ["softmax_1", 0, 0]}]]], "shared_object_id": 15}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.0035691297373946773, "noise_shape": null, "seed": null}, "name": "dropout_3", "inbound_nodes": [[["dense_8", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["weighted_sum_by_dot_product_1", 0, 0, {}], ["dropout_3", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 90, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_9", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.20622023291903313, "noise_shape": null, "seed": null}, "name": "dropout_4", "inbound_nodes": [[["dense_9", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_10", "inbound_nodes": [[["dropout_4", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.28414978580908434, "noise_shape": null, "seed": null}, "name": "dropout_5", "inbound_nodes": [[["dense_10", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_11", "inbound_nodes": [[["dropout_5", 0, 0, {}]]], "shared_object_id": 28}], "input_layers": [["input_59", 0, 0], ["input_60", 0, 0]], "output_layers": [["dense_11", 0, 0]]}}, "training_config": {"loss": "mae", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 32}, {"class_name": "MeanMetricWrapper", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 33}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0007928014965727925, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_59", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 36, 22]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 36, 22]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_59"}}
?

	layer
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "time_distributed_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}}, "inbound_nodes": [[["input_59", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 22]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 22]}}
?

	layer
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "time_distributed_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}}, "inbound_nodes": [[["time_distributed_2", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 50]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 50]}}
?
 regularization_losses
!trainable_variables
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["time_distributed_3", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 36}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_60", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_60"}}
?
$regularization_losses
%trainable_variables
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "softmax_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Softmax", "config": {"name": "softmax_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["flatten_1", 0, 0, {}]]], "shared_object_id": 11}
?

(kernel
)bias
*regularization_losses
+trainable_variables
,	variables
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 80, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_60", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11]}}
?
.regularization_losses
/trainable_variables
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "weighted_sum_by_dot_product_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "WeightedSumByDotProduct", "config": {"name": "weighted_sum_by_dot_product_1", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["input_59", 0, 0, {"a": ["softmax_1", 0, 0]}]]], "shared_object_id": 15}
?
2regularization_losses
3trainable_variables
4	variables
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.0035691297373946773, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_8", 0, 0, {}]]], "shared_object_id": 16}
?
6regularization_losses
7trainable_variables
8	variables
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["weighted_sum_by_dot_product_1", 0, 0, {}], ["dropout_3", 0, 0, {}]]], "shared_object_id": 17, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 22]}, {"class_name": "TensorShape", "items": [null, 80]}]}
?	

:kernel
;bias
<regularization_losses
=trainable_variables
>	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 90, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 102}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 102]}}
?
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.20622023291903313, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_9", 0, 0, {}]]], "shared_object_id": 21}
?	

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_4", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 90}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 90]}}
?
Jregularization_losses
Ktrainable_variables
L	variables
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.28414978580908434, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_10", 0, 0, {}]]], "shared_object_id": 25}
?	

Nkernel
Obias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_5", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
?
Titer

Ubeta_1

Vbeta_2
	Wdecay
Xlearning_rate(m?)m?:m?;m?Dm?Em?Nm?Om?Ym?Zm?[m?\m?(v?)v?:v?;v?Dv?Ev?Nv?Ov?Yv?Zv?[v?\v?"
	optimizer
 "
trackable_list_wrapper
v
Y0
Z1
[2
\3
(4
)5
:6
;7
D8
E9
N10
O11"
trackable_list_wrapper
v
Y0
Z1
[2
\3
(4
)5
:6
;7
D8
E9
N10
O11"
trackable_list_wrapper
?
regularization_losses
]layer_regularization_losses
^metrics
_layer_metrics
trainable_variables
`non_trainable_variables
	variables

alayers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?

Ykernel
Zbias
bregularization_losses
ctrainable_variables
d	variables
e	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 22}}, "shared_object_id": 41}}
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
?
flayer_regularization_losses
regularization_losses
gmetrics
hlayer_metrics
trainable_variables
inon_trainable_variables
	variables

jlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

[kernel
\bias
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 42}}
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
?
olayer_regularization_losses
regularization_losses
pmetrics
qlayer_metrics
trainable_variables
rnon_trainable_variables
	variables

slayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
tlayer_regularization_losses
 regularization_losses
umetrics
vlayer_metrics
!trainable_variables
wnon_trainable_variables
"	variables

xlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ylayer_regularization_losses
$regularization_losses
zmetrics
{layer_metrics
%trainable_variables
|non_trainable_variables
&	variables

}layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :P2dense_8/kernel
:P2dense_8/bias
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?
~layer_regularization_losses
*regularization_losses
metrics
?layer_metrics
+trainable_variables
?non_trainable_variables
,	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
.regularization_losses
?metrics
?layer_metrics
/trainable_variables
?non_trainable_variables
0	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
2regularization_losses
?metrics
?layer_metrics
3trainable_variables
?non_trainable_variables
4	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
6regularization_losses
?metrics
?layer_metrics
7trainable_variables
?non_trainable_variables
8	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :fZ2dense_9/kernel
:Z2dense_9/bias
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
 ?layer_regularization_losses
<regularization_losses
?metrics
?layer_metrics
=trainable_variables
?non_trainable_variables
>	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
@regularization_losses
?metrics
?layer_metrics
Atrainable_variables
?non_trainable_variables
B	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:Z2dense_10/kernel
:2dense_10/bias
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
?
 ?layer_regularization_losses
Fregularization_losses
?metrics
?layer_metrics
Gtrainable_variables
?non_trainable_variables
H	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
Jregularization_losses
?metrics
?layer_metrics
Ktrainable_variables
?non_trainable_variables
L	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2dense_11/kernel
:2dense_11/bias
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
?
 ?layer_regularization_losses
Pregularization_losses
?metrics
?layer_metrics
Qtrainable_variables
?non_trainable_variables
R	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
+:)22time_distributed_2/kernel
%:#22time_distributed_2/bias
+:)22time_distributed_3/kernel
%:#2time_distributed_3/bias
 "
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
?
 ?layer_regularization_losses
bregularization_losses
?metrics
?layer_metrics
ctrainable_variables
?non_trainable_variables
d	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
?
 ?layer_regularization_losses
kregularization_losses
?metrics
?layer_metrics
ltrainable_variables
?non_trainable_variables
m	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 43}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "mae", "dtype": "float32", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 32}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "mse", "dtype": "float32", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 33}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
%:#P2Adam/dense_8/kernel/m
:P2Adam/dense_8/bias/m
%:#fZ2Adam/dense_9/kernel/m
:Z2Adam/dense_9/bias/m
&:$Z2Adam/dense_10/kernel/m
 :2Adam/dense_10/bias/m
&:$2Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
0:.22 Adam/time_distributed_2/kernel/m
*:(22Adam/time_distributed_2/bias/m
0:.22 Adam/time_distributed_3/kernel/m
*:(2Adam/time_distributed_3/bias/m
%:#P2Adam/dense_8/kernel/v
:P2Adam/dense_8/bias/v
%:#fZ2Adam/dense_9/kernel/v
:Z2Adam/dense_9/bias/v
&:$Z2Adam/dense_10/kernel/v
 :2Adam/dense_10/bias/v
&:$2Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v
0:.22 Adam/time_distributed_2/kernel/v
*:(22Adam/time_distributed_2/bias/v
0:.22 Adam/time_distributed_3/kernel/v
*:(2Adam/time_distributed_3/bias/v
?2?
#__inference__wrapped_model_17645985?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *T?Q
O?L
&?#
input_59?????????$
"?
input_60?????????
?2?
*__inference_model_5_layer_call_fn_17646470
*__inference_model_5_layer_call_fn_17646966
*__inference_model_5_layer_call_fn_17646996
*__inference_model_5_layer_call_fn_17646806?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_model_5_layer_call_and_return_conditional_losses_17647068
E__inference_model_5_layer_call_and_return_conditional_losses_17647161
E__inference_model_5_layer_call_and_return_conditional_losses_17646852
E__inference_model_5_layer_call_and_return_conditional_losses_17646898?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
5__inference_time_distributed_2_layer_call_fn_17647170
5__inference_time_distributed_2_layer_call_fn_17647179
5__inference_time_distributed_2_layer_call_fn_17647188
5__inference_time_distributed_2_layer_call_fn_17647197?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647219
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647241
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647256
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647271?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
5__inference_time_distributed_3_layer_call_fn_17647280
5__inference_time_distributed_3_layer_call_fn_17647289
5__inference_time_distributed_3_layer_call_fn_17647298
5__inference_time_distributed_3_layer_call_fn_17647307?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647328
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647349
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647363
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647377?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_flatten_1_layer_call_fn_17647382?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_flatten_1_layer_call_and_return_conditional_losses_17647388?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_softmax_1_layer_call_fn_17647393?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_softmax_1_layer_call_and_return_conditional_losses_17647398?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_8_layer_call_fn_17647407?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_8_layer_call_and_return_conditional_losses_17647418?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_weighted_sum_by_dot_product_1_layer_call_fn_17647424?
???
FullArgSpec 
args?
jself
jinfo
ja
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
[__inference_weighted_sum_by_dot_product_1_layer_call_and_return_conditional_losses_17647436?
???
FullArgSpec 
args?
jself
jinfo
ja
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dropout_3_layer_call_fn_17647441
,__inference_dropout_3_layer_call_fn_17647446?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_3_layer_call_and_return_conditional_losses_17647451
G__inference_dropout_3_layer_call_and_return_conditional_losses_17647463?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_concatenate_1_layer_call_fn_17647469?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_concatenate_1_layer_call_and_return_conditional_losses_17647476?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_9_layer_call_fn_17647485?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_9_layer_call_and_return_conditional_losses_17647496?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dropout_4_layer_call_fn_17647501
,__inference_dropout_4_layer_call_fn_17647506?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_4_layer_call_and_return_conditional_losses_17647511
G__inference_dropout_4_layer_call_and_return_conditional_losses_17647523?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dense_10_layer_call_fn_17647532?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_10_layer_call_and_return_conditional_losses_17647543?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dropout_5_layer_call_fn_17647548
,__inference_dropout_5_layer_call_fn_17647553?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_5_layer_call_and_return_conditional_losses_17647558
G__inference_dropout_5_layer_call_and_return_conditional_losses_17647570?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dense_11_layer_call_fn_17647579?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_11_layer_call_and_return_conditional_losses_17647589?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_17646936input_59input_60"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_6_layer_call_fn_17647598?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_6_layer_call_and_return_conditional_losses_17647609?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_7_layer_call_fn_17647618?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_7_layer_call_and_return_conditional_losses_17647628?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
#__inference__wrapped_model_17645985?YZ[\():;DENO^?[
T?Q
O?L
&?#
input_59?????????$
"?
input_60?????????
? "3?0
.
dense_11"?
dense_11??????????
K__inference_concatenate_1_layer_call_and_return_conditional_losses_17647476?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????P
? "%?"
?
0?????????f
? ?
0__inference_concatenate_1_layer_call_fn_17647469vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????P
? "??????????f?
F__inference_dense_10_layer_call_and_return_conditional_losses_17647543\DE/?,
%?"
 ?
inputs?????????Z
? "%?"
?
0?????????
? ~
+__inference_dense_10_layer_call_fn_17647532ODE/?,
%?"
 ?
inputs?????????Z
? "???????????
F__inference_dense_11_layer_call_and_return_conditional_losses_17647589\NO/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_11_layer_call_fn_17647579ONO/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_6_layer_call_and_return_conditional_losses_17647609\YZ/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????2
? }
*__inference_dense_6_layer_call_fn_17647598OYZ/?,
%?"
 ?
inputs?????????
? "??????????2?
E__inference_dense_7_layer_call_and_return_conditional_losses_17647628\[\/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? }
*__inference_dense_7_layer_call_fn_17647618O[\/?,
%?"
 ?
inputs?????????2
? "???????????
E__inference_dense_8_layer_call_and_return_conditional_losses_17647418\()/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????P
? }
*__inference_dense_8_layer_call_fn_17647407O()/?,
%?"
 ?
inputs?????????
? "??????????P?
E__inference_dense_9_layer_call_and_return_conditional_losses_17647496\:;/?,
%?"
 ?
inputs?????????f
? "%?"
?
0?????????Z
? }
*__inference_dense_9_layer_call_fn_17647485O:;/?,
%?"
 ?
inputs?????????f
? "??????????Z?
G__inference_dropout_3_layer_call_and_return_conditional_losses_17647451\3?0
)?&
 ?
inputs?????????P
p 
? "%?"
?
0?????????P
? ?
G__inference_dropout_3_layer_call_and_return_conditional_losses_17647463\3?0
)?&
 ?
inputs?????????P
p
? "%?"
?
0?????????P
? 
,__inference_dropout_3_layer_call_fn_17647441O3?0
)?&
 ?
inputs?????????P
p 
? "??????????P
,__inference_dropout_3_layer_call_fn_17647446O3?0
)?&
 ?
inputs?????????P
p
? "??????????P?
G__inference_dropout_4_layer_call_and_return_conditional_losses_17647511\3?0
)?&
 ?
inputs?????????Z
p 
? "%?"
?
0?????????Z
? ?
G__inference_dropout_4_layer_call_and_return_conditional_losses_17647523\3?0
)?&
 ?
inputs?????????Z
p
? "%?"
?
0?????????Z
? 
,__inference_dropout_4_layer_call_fn_17647501O3?0
)?&
 ?
inputs?????????Z
p 
? "??????????Z
,__inference_dropout_4_layer_call_fn_17647506O3?0
)?&
 ?
inputs?????????Z
p
? "??????????Z?
G__inference_dropout_5_layer_call_and_return_conditional_losses_17647558\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
G__inference_dropout_5_layer_call_and_return_conditional_losses_17647570\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? 
,__inference_dropout_5_layer_call_fn_17647548O3?0
)?&
 ?
inputs?????????
p 
? "??????????
,__inference_dropout_5_layer_call_fn_17647553O3?0
)?&
 ?
inputs?????????
p
? "???????????
G__inference_flatten_1_layer_call_and_return_conditional_losses_17647388\3?0
)?&
$?!
inputs?????????$
? "%?"
?
0?????????$
? 
,__inference_flatten_1_layer_call_fn_17647382O3?0
)?&
$?!
inputs?????????$
? "??????????$?
E__inference_model_5_layer_call_and_return_conditional_losses_17646852?YZ[\():;DENOf?c
\?Y
O?L
&?#
input_59?????????$
"?
input_60?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_5_layer_call_and_return_conditional_losses_17646898?YZ[\():;DENOf?c
\?Y
O?L
&?#
input_59?????????$
"?
input_60?????????
p

 
? "%?"
?
0?????????
? ?
E__inference_model_5_layer_call_and_return_conditional_losses_17647068?YZ[\():;DENOf?c
\?Y
O?L
&?#
inputs/0?????????$
"?
inputs/1?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_5_layer_call_and_return_conditional_losses_17647161?YZ[\():;DENOf?c
\?Y
O?L
&?#
inputs/0?????????$
"?
inputs/1?????????
p

 
? "%?"
?
0?????????
? ?
*__inference_model_5_layer_call_fn_17646470?YZ[\():;DENOf?c
\?Y
O?L
&?#
input_59?????????$
"?
input_60?????????
p 

 
? "???????????
*__inference_model_5_layer_call_fn_17646806?YZ[\():;DENOf?c
\?Y
O?L
&?#
input_59?????????$
"?
input_60?????????
p

 
? "???????????
*__inference_model_5_layer_call_fn_17646966?YZ[\():;DENOf?c
\?Y
O?L
&?#
inputs/0?????????$
"?
inputs/1?????????
p 

 
? "???????????
*__inference_model_5_layer_call_fn_17646996?YZ[\():;DENOf?c
\?Y
O?L
&?#
inputs/0?????????$
"?
inputs/1?????????
p

 
? "???????????
&__inference_signature_wrapper_17646936?YZ[\():;DENOq?n
? 
g?d
2
input_59&?#
input_59?????????$
.
input_60"?
input_60?????????"3?0
.
dense_11"?
dense_11??????????
G__inference_softmax_1_layer_call_and_return_conditional_losses_17647398\3?0
)?&
 ?
inputs?????????$

 
? "%?"
?
0?????????$
? 
,__inference_softmax_1_layer_call_fn_17647393O3?0
)?&
 ?
inputs?????????$

 
? "??????????$?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647219~YZD?A
:?7
-?*
inputs??????????????????
p 

 
? "2?/
(?%
0??????????????????2
? ?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647241~YZD?A
:?7
-?*
inputs??????????????????
p

 
? "2?/
(?%
0??????????????????2
? ?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647256lYZ;?8
1?.
$?!
inputs?????????$
p 

 
? ")?&
?
0?????????$2
? ?
P__inference_time_distributed_2_layer_call_and_return_conditional_losses_17647271lYZ;?8
1?.
$?!
inputs?????????$
p

 
? ")?&
?
0?????????$2
? ?
5__inference_time_distributed_2_layer_call_fn_17647170qYZD?A
:?7
-?*
inputs??????????????????
p 

 
? "%?"??????????????????2?
5__inference_time_distributed_2_layer_call_fn_17647179qYZD?A
:?7
-?*
inputs??????????????????
p

 
? "%?"??????????????????2?
5__inference_time_distributed_2_layer_call_fn_17647188_YZ;?8
1?.
$?!
inputs?????????$
p 

 
? "??????????$2?
5__inference_time_distributed_2_layer_call_fn_17647197_YZ;?8
1?.
$?!
inputs?????????$
p

 
? "??????????$2?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647328~[\D?A
:?7
-?*
inputs??????????????????2
p 

 
? "2?/
(?%
0??????????????????
? ?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647349~[\D?A
:?7
-?*
inputs??????????????????2
p

 
? "2?/
(?%
0??????????????????
? ?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647363l[\;?8
1?.
$?!
inputs?????????$2
p 

 
? ")?&
?
0?????????$
? ?
P__inference_time_distributed_3_layer_call_and_return_conditional_losses_17647377l[\;?8
1?.
$?!
inputs?????????$2
p

 
? ")?&
?
0?????????$
? ?
5__inference_time_distributed_3_layer_call_fn_17647280q[\D?A
:?7
-?*
inputs??????????????????2
p 

 
? "%?"???????????????????
5__inference_time_distributed_3_layer_call_fn_17647289q[\D?A
:?7
-?*
inputs??????????????????2
p

 
? "%?"???????????????????
5__inference_time_distributed_3_layer_call_fn_17647298_[\;?8
1?.
$?!
inputs?????????$2
p 

 
? "??????????$?
5__inference_time_distributed_3_layer_call_fn_17647307_[\;?8
1?.
$?!
inputs?????????$2
p

 
? "??????????$?
[__inference_weighted_sum_by_dot_product_1_layer_call_and_return_conditional_losses_17647436wN?K
D?A
"?
info?????????$
?
a?????????$
? "%?"
?
0?????????
? ?
@__inference_weighted_sum_by_dot_product_1_layer_call_fn_17647424jN?K
D?A
"?
info?????????$
?
a?????????$
? "??????????