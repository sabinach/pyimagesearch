╔│
╒л
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

·
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
╛
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
executor_typestring И
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.1-0-g85c8b2a817f8Ьс
Д
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
: *
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
: *
dtype0
Р
batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_15/gamma
Й
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes
: *
dtype0
О
batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_15/beta
З
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes
: *
dtype0
Ь
"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_15/moving_mean
Х
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes
: *
dtype0
д
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_15/moving_variance
Э
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes
: *
dtype0
Д
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
: *
dtype0
Р
batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_16/gamma
Й
0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes
: *
dtype0
О
batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_16/beta
З
/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes
: *
dtype0
Ь
"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_16/moving_mean
Х
6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes
: *
dtype0
д
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_16/moving_variance
Э
:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes
: *
dtype0
Д
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:@*
dtype0
Р
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_17/gamma
Й
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes
:@*
dtype0
О
batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_17/beta
З
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes
:@*
dtype0
Ь
"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_17/moving_mean
Х
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes
:@*
dtype0
д
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_17/moving_variance
Э
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes
:@*
dtype0
Д
conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:@*
dtype0
Р
batch_normalization_18/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_18/gamma
Й
0batch_normalization_18/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_18/gamma*
_output_shapes
:@*
dtype0
О
batch_normalization_18/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_18/beta
З
/batch_normalization_18/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_18/beta*
_output_shapes
:@*
dtype0
Ь
"batch_normalization_18/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_18/moving_mean
Х
6batch_normalization_18/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_18/moving_mean*
_output_shapes
:@*
dtype0
д
&batch_normalization_18/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_18/moving_variance
Э
:batch_normalization_18/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_18/moving_variance*
_output_shapes
:@*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А А*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
А А*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:А*
dtype0
С
batch_normalization_19/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_19/gamma
К
0batch_normalization_19/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_19/gamma*
_output_shapes	
:А*
dtype0
П
batch_normalization_19/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_19/beta
И
/batch_normalization_19/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_19/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_19/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_19/moving_mean
Ц
6batch_normalization_19/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_19/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_19/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_19/moving_variance
Ю
:batch_normalization_19/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_19/moving_variance*
_output_shapes	
:А*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	А
*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:
*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
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
Ю
SGD/conv2d_12/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameSGD/conv2d_12/kernel/momentum
Ч
1SGD/conv2d_12/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_12/kernel/momentum*&
_output_shapes
: *
dtype0
О
SGD/conv2d_12/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameSGD/conv2d_12/bias/momentum
З
/SGD/conv2d_12/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_12/bias/momentum*
_output_shapes
: *
dtype0
к
)SGD/batch_normalization_15/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)SGD/batch_normalization_15/gamma/momentum
г
=SGD/batch_normalization_15/gamma/momentum/Read/ReadVariableOpReadVariableOp)SGD/batch_normalization_15/gamma/momentum*
_output_shapes
: *
dtype0
и
(SGD/batch_normalization_15/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(SGD/batch_normalization_15/beta/momentum
б
<SGD/batch_normalization_15/beta/momentum/Read/ReadVariableOpReadVariableOp(SGD/batch_normalization_15/beta/momentum*
_output_shapes
: *
dtype0
Ю
SGD/conv2d_13/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_nameSGD/conv2d_13/kernel/momentum
Ч
1SGD/conv2d_13/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_13/kernel/momentum*&
_output_shapes
:  *
dtype0
О
SGD/conv2d_13/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameSGD/conv2d_13/bias/momentum
З
/SGD/conv2d_13/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_13/bias/momentum*
_output_shapes
: *
dtype0
к
)SGD/batch_normalization_16/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)SGD/batch_normalization_16/gamma/momentum
г
=SGD/batch_normalization_16/gamma/momentum/Read/ReadVariableOpReadVariableOp)SGD/batch_normalization_16/gamma/momentum*
_output_shapes
: *
dtype0
и
(SGD/batch_normalization_16/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(SGD/batch_normalization_16/beta/momentum
б
<SGD/batch_normalization_16/beta/momentum/Read/ReadVariableOpReadVariableOp(SGD/batch_normalization_16/beta/momentum*
_output_shapes
: *
dtype0
Ю
SGD/conv2d_14/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*.
shared_nameSGD/conv2d_14/kernel/momentum
Ч
1SGD/conv2d_14/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_14/kernel/momentum*&
_output_shapes
: @*
dtype0
О
SGD/conv2d_14/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameSGD/conv2d_14/bias/momentum
З
/SGD/conv2d_14/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_14/bias/momentum*
_output_shapes
:@*
dtype0
к
)SGD/batch_normalization_17/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)SGD/batch_normalization_17/gamma/momentum
г
=SGD/batch_normalization_17/gamma/momentum/Read/ReadVariableOpReadVariableOp)SGD/batch_normalization_17/gamma/momentum*
_output_shapes
:@*
dtype0
и
(SGD/batch_normalization_17/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(SGD/batch_normalization_17/beta/momentum
б
<SGD/batch_normalization_17/beta/momentum/Read/ReadVariableOpReadVariableOp(SGD/batch_normalization_17/beta/momentum*
_output_shapes
:@*
dtype0
Ю
SGD/conv2d_15/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_nameSGD/conv2d_15/kernel/momentum
Ч
1SGD/conv2d_15/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_15/kernel/momentum*&
_output_shapes
:@@*
dtype0
О
SGD/conv2d_15/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameSGD/conv2d_15/bias/momentum
З
/SGD/conv2d_15/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_15/bias/momentum*
_output_shapes
:@*
dtype0
к
)SGD/batch_normalization_18/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)SGD/batch_normalization_18/gamma/momentum
г
=SGD/batch_normalization_18/gamma/momentum/Read/ReadVariableOpReadVariableOp)SGD/batch_normalization_18/gamma/momentum*
_output_shapes
:@*
dtype0
и
(SGD/batch_normalization_18/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(SGD/batch_normalization_18/beta/momentum
б
<SGD/batch_normalization_18/beta/momentum/Read/ReadVariableOpReadVariableOp(SGD/batch_normalization_18/beta/momentum*
_output_shapes
:@*
dtype0
Ф
SGD/dense_6/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А А*,
shared_nameSGD/dense_6/kernel/momentum
Н
/SGD/dense_6/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_6/kernel/momentum* 
_output_shapes
:
А А*
dtype0
Л
SGD/dense_6/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:А**
shared_nameSGD/dense_6/bias/momentum
Д
-SGD/dense_6/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_6/bias/momentum*
_output_shapes	
:А*
dtype0
л
)SGD/batch_normalization_19/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)SGD/batch_normalization_19/gamma/momentum
д
=SGD/batch_normalization_19/gamma/momentum/Read/ReadVariableOpReadVariableOp)SGD/batch_normalization_19/gamma/momentum*
_output_shapes	
:А*
dtype0
й
(SGD/batch_normalization_19/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(SGD/batch_normalization_19/beta/momentum
в
<SGD/batch_normalization_19/beta/momentum/Read/ReadVariableOpReadVariableOp(SGD/batch_normalization_19/beta/momentum*
_output_shapes	
:А*
dtype0
У
SGD/dense_7/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*,
shared_nameSGD/dense_7/kernel/momentum
М
/SGD/dense_7/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_7/kernel/momentum*
_output_shapes
:	А
*
dtype0
К
SGD/dense_7/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_nameSGD/dense_7/bias/momentum
Г
-SGD/dense_7/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_7/bias/momentum*
_output_shapes
:
*
dtype0

NoOpNoOp
ОЕ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╚Д
value╜ДB╣Д B▒Д
╚
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
R
$regularization_losses
%	variables
&trainable_variables
'	keras_api
Ч
(axis
	)gamma
*beta
+moving_mean
,moving_variance
-regularization_losses
.	variables
/trainable_variables
0	keras_api
h

1kernel
2bias
3regularization_losses
4	variables
5trainable_variables
6	keras_api
R
7regularization_losses
8	variables
9trainable_variables
:	keras_api
Ч
;axis
	<gamma
=beta
>moving_mean
?moving_variance
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
R
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
R
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
h

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
R
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
Ч
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[regularization_losses
\	variables
]trainable_variables
^	keras_api
h

_kernel
`bias
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
R
eregularization_losses
f	variables
gtrainable_variables
h	keras_api
Ч
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
R
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
R
vregularization_losses
w	variables
xtrainable_variables
y	keras_api
R
zregularization_losses
{	variables
|trainable_variables
}	keras_api
l

~kernel
bias
Аregularization_losses
Б	variables
Вtrainable_variables
Г	keras_api
V
Дregularization_losses
Е	variables
Жtrainable_variables
З	keras_api
а
	Иaxis

Йgamma
	Кbeta
Лmoving_mean
Мmoving_variance
Нregularization_losses
О	variables
Пtrainable_variables
Р	keras_api
V
Сregularization_losses
Т	variables
Уtrainable_variables
Ф	keras_api
n
Хkernel
	Цbias
Чregularization_losses
Ш	variables
Щtrainable_variables
Ъ	keras_api
V
Ыregularization_losses
Ь	variables
Эtrainable_variables
Ю	keras_api
┤
	Яiter

аdecay
бlearning_rate
вmomentummomentumжmomentumз)momentumи*momentumй1momentumк2momentumл<momentumм=momentumнLmomentumоMmomentumпWmomentum░Xmomentum▒_momentum▓`momentum│jmomentum┤kmomentum╡~momentum╢momentum╖Йmomentum╕Кmomentum╣Хmomentum║Цmomentum╗
 
№
0
1
)2
*3
+4
,5
16
27
<8
=9
>10
?11
L12
M13
W14
X15
Y16
Z17
_18
`19
j20
k21
l22
m23
~24
25
Й26
К27
Л28
М29
Х30
Ц31
к
0
1
)2
*3
14
25
<6
=7
L8
M9
W10
X11
_12
`13
j14
k15
~16
17
Й18
К19
Х20
Ц21
▓
 гlayer_regularization_losses
дnon_trainable_variables
еlayer_metrics
regularization_losses
жmetrics
	variables
trainable_variables
зlayers
 
\Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
▓
 иlayer_regularization_losses
йnon_trainable_variables
кlayer_metrics
 regularization_losses
лmetrics
!	variables
"trainable_variables
мlayers
 
 
 
▓
 нlayer_regularization_losses
оnon_trainable_variables
пlayer_metrics
$regularization_losses
░metrics
%	variables
&trainable_variables
▒layers
 
ge
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1
+2
,3

)0
*1
▓
 ▓layer_regularization_losses
│non_trainable_variables
┤layer_metrics
-regularization_losses
╡metrics
.	variables
/trainable_variables
╢layers
\Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

10
21

10
21
▓
 ╖layer_regularization_losses
╕non_trainable_variables
╣layer_metrics
3regularization_losses
║metrics
4	variables
5trainable_variables
╗layers
 
 
 
▓
 ╝layer_regularization_losses
╜non_trainable_variables
╛layer_metrics
7regularization_losses
┐metrics
8	variables
9trainable_variables
└layers
 
ge
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1
>2
?3

<0
=1
▓
 ┴layer_regularization_losses
┬non_trainable_variables
├layer_metrics
@regularization_losses
─metrics
A	variables
Btrainable_variables
┼layers
 
 
 
▓
 ╞layer_regularization_losses
╟non_trainable_variables
╚layer_metrics
Dregularization_losses
╔metrics
E	variables
Ftrainable_variables
╩layers
 
 
 
▓
 ╦layer_regularization_losses
╠non_trainable_variables
═layer_metrics
Hregularization_losses
╬metrics
I	variables
Jtrainable_variables
╧layers
\Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
▓
 ╨layer_regularization_losses
╤non_trainable_variables
╥layer_metrics
Nregularization_losses
╙metrics
O	variables
Ptrainable_variables
╘layers
 
 
 
▓
 ╒layer_regularization_losses
╓non_trainable_variables
╫layer_metrics
Rregularization_losses
╪metrics
S	variables
Ttrainable_variables
┘layers
 
ge
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

W0
X1
Y2
Z3

W0
X1
▓
 ┌layer_regularization_losses
█non_trainable_variables
▄layer_metrics
[regularization_losses
▌metrics
\	variables
]trainable_variables
▐layers
\Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

_0
`1

_0
`1
▓
 ▀layer_regularization_losses
рnon_trainable_variables
сlayer_metrics
aregularization_losses
тmetrics
b	variables
ctrainable_variables
уlayers
 
 
 
▓
 фlayer_regularization_losses
хnon_trainable_variables
цlayer_metrics
eregularization_losses
чmetrics
f	variables
gtrainable_variables
шlayers
 
ge
VARIABLE_VALUEbatch_normalization_18/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_18/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_18/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_18/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

j0
k1
l2
m3

j0
k1
▓
 щlayer_regularization_losses
ъnon_trainable_variables
ыlayer_metrics
nregularization_losses
ьmetrics
o	variables
ptrainable_variables
эlayers
 
 
 
▓
 юlayer_regularization_losses
яnon_trainable_variables
Ёlayer_metrics
rregularization_losses
ёmetrics
s	variables
ttrainable_variables
Єlayers
 
 
 
▓
 єlayer_regularization_losses
Їnon_trainable_variables
їlayer_metrics
vregularization_losses
Ўmetrics
w	variables
xtrainable_variables
ўlayers
 
 
 
▓
 °layer_regularization_losses
∙non_trainable_variables
·layer_metrics
zregularization_losses
√metrics
{	variables
|trainable_variables
№layers
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

~0
1

~0
1
╡
 ¤layer_regularization_losses
■non_trainable_variables
 layer_metrics
Аregularization_losses
Аmetrics
Б	variables
Вtrainable_variables
Бlayers
 
 
 
╡
 Вlayer_regularization_losses
Гnon_trainable_variables
Дlayer_metrics
Дregularization_losses
Еmetrics
Е	variables
Жtrainable_variables
Жlayers
 
ge
VARIABLE_VALUEbatch_normalization_19/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_19/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_19/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_19/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 
Й0
К1
Л2
М3

Й0
К1
╡
 Зlayer_regularization_losses
Иnon_trainable_variables
Йlayer_metrics
Нregularization_losses
Кmetrics
О	variables
Пtrainable_variables
Лlayers
 
 
 
╡
 Мlayer_regularization_losses
Нnon_trainable_variables
Оlayer_metrics
Сregularization_losses
Пmetrics
Т	variables
Уtrainable_variables
Рlayers
[Y
VARIABLE_VALUEdense_7/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_7/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Х0
Ц1

Х0
Ц1
╡
 Сlayer_regularization_losses
Тnon_trainable_variables
Уlayer_metrics
Чregularization_losses
Фmetrics
Ш	variables
Щtrainable_variables
Хlayers
 
 
 
╡
 Цlayer_regularization_losses
Чnon_trainable_variables
Шlayer_metrics
Ыregularization_losses
Щmetrics
Ь	variables
Эtrainable_variables
Ъlayers
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
H
+0
,1
>2
?3
Y4
Z5
l6
m7
Л8
М9
 

Ы0
Ь1
о
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
15
16
17
18
19
20
21
22
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

+0
,1
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

>0
?1
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

Y0
Z1
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

l0
m1
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

Л0
М1
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

Эtotal

Юcount
Я	variables
а	keras_api
I

бtotal

вcount
г
_fn_kwargs
д	variables
е	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Э0
Ю1

Я	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

б0
в1

д	variables
НК
VARIABLE_VALUESGD/conv2d_12/kernel/momentumYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUESGD/conv2d_12/bias/momentumWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE)SGD/batch_normalization_15/gamma/momentumXlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЦУ
VARIABLE_VALUE(SGD/batch_normalization_15/beta/momentumWlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUESGD/conv2d_13/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUESGD/conv2d_13/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE)SGD/batch_normalization_16/gamma/momentumXlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЦУ
VARIABLE_VALUE(SGD/batch_normalization_16/beta/momentumWlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUESGD/conv2d_14/kernel/momentumYlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUESGD/conv2d_14/bias/momentumWlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE)SGD/batch_normalization_17/gamma/momentumXlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЦУ
VARIABLE_VALUE(SGD/batch_normalization_17/beta/momentumWlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUESGD/conv2d_15/kernel/momentumYlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUESGD/conv2d_15/bias/momentumWlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE)SGD/batch_normalization_18/gamma/momentumXlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЦУ
VARIABLE_VALUE(SGD/batch_normalization_18/beta/momentumWlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUESGD/dense_6/kernel/momentumYlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUESGD/dense_6/bias/momentumWlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE)SGD/batch_normalization_19/gamma/momentumXlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЦУ
VARIABLE_VALUE(SGD/batch_normalization_19/beta/momentumWlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUESGD/dense_7/kernel/momentumZlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUESGD/dense_7/bias/momentumXlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
Т
serving_default_conv2d_12_inputPlaceholder*/
_output_shapes
:           *
dtype0*$
shape:           
ф	
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_12_inputconv2d_12/kernelconv2d_12/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_14/kernelconv2d_14/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_15/kernelconv2d_15/biasbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_variancedense_6/kerneldense_6/bias&batch_normalization_19/moving_variancebatch_normalization_19/gamma"batch_normalization_19/moving_meanbatch_normalization_19/betadense_7/kerneldense_7/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_298246
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
·
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp0batch_normalization_15/gamma/Read/ReadVariableOp/batch_normalization_15/beta/Read/ReadVariableOp6batch_normalization_15/moving_mean/Read/ReadVariableOp:batch_normalization_15/moving_variance/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp0batch_normalization_16/gamma/Read/ReadVariableOp/batch_normalization_16/beta/Read/ReadVariableOp6batch_normalization_16/moving_mean/Read/ReadVariableOp:batch_normalization_16/moving_variance/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp0batch_normalization_17/gamma/Read/ReadVariableOp/batch_normalization_17/beta/Read/ReadVariableOp6batch_normalization_17/moving_mean/Read/ReadVariableOp:batch_normalization_17/moving_variance/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp0batch_normalization_18/gamma/Read/ReadVariableOp/batch_normalization_18/beta/Read/ReadVariableOp6batch_normalization_18/moving_mean/Read/ReadVariableOp:batch_normalization_18/moving_variance/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp0batch_normalization_19/gamma/Read/ReadVariableOp/batch_normalization_19/beta/Read/ReadVariableOp6batch_normalization_19/moving_mean/Read/ReadVariableOp:batch_normalization_19/moving_variance/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1SGD/conv2d_12/kernel/momentum/Read/ReadVariableOp/SGD/conv2d_12/bias/momentum/Read/ReadVariableOp=SGD/batch_normalization_15/gamma/momentum/Read/ReadVariableOp<SGD/batch_normalization_15/beta/momentum/Read/ReadVariableOp1SGD/conv2d_13/kernel/momentum/Read/ReadVariableOp/SGD/conv2d_13/bias/momentum/Read/ReadVariableOp=SGD/batch_normalization_16/gamma/momentum/Read/ReadVariableOp<SGD/batch_normalization_16/beta/momentum/Read/ReadVariableOp1SGD/conv2d_14/kernel/momentum/Read/ReadVariableOp/SGD/conv2d_14/bias/momentum/Read/ReadVariableOp=SGD/batch_normalization_17/gamma/momentum/Read/ReadVariableOp<SGD/batch_normalization_17/beta/momentum/Read/ReadVariableOp1SGD/conv2d_15/kernel/momentum/Read/ReadVariableOp/SGD/conv2d_15/bias/momentum/Read/ReadVariableOp=SGD/batch_normalization_18/gamma/momentum/Read/ReadVariableOp<SGD/batch_normalization_18/beta/momentum/Read/ReadVariableOp/SGD/dense_6/kernel/momentum/Read/ReadVariableOp-SGD/dense_6/bias/momentum/Read/ReadVariableOp=SGD/batch_normalization_19/gamma/momentum/Read/ReadVariableOp<SGD/batch_normalization_19/beta/momentum/Read/ReadVariableOp/SGD/dense_7/kernel/momentum/Read/ReadVariableOp-SGD/dense_7/bias/momentum/Read/ReadVariableOpConst*K
TinD
B2@	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_299748
Э
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_12/kernelconv2d_12/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_14/kernelconv2d_14/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_15/kernelconv2d_15/biasbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_variancedense_6/kerneldense_6/biasbatch_normalization_19/gammabatch_normalization_19/beta"batch_normalization_19/moving_mean&batch_normalization_19/moving_variancedense_7/kerneldense_7/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1SGD/conv2d_12/kernel/momentumSGD/conv2d_12/bias/momentum)SGD/batch_normalization_15/gamma/momentum(SGD/batch_normalization_15/beta/momentumSGD/conv2d_13/kernel/momentumSGD/conv2d_13/bias/momentum)SGD/batch_normalization_16/gamma/momentum(SGD/batch_normalization_16/beta/momentumSGD/conv2d_14/kernel/momentumSGD/conv2d_14/bias/momentum)SGD/batch_normalization_17/gamma/momentum(SGD/batch_normalization_17/beta/momentumSGD/conv2d_15/kernel/momentumSGD/conv2d_15/bias/momentum)SGD/batch_normalization_18/gamma/momentum(SGD/batch_normalization_18/beta/momentumSGD/dense_6/kernel/momentumSGD/dense_6/bias/momentum)SGD/batch_normalization_19/gamma/momentum(SGD/batch_normalization_19/beta/momentumSGD/dense_7/kernel/momentumSGD/dense_7/bias/momentum*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_299944хЭ
└
к
7__inference_batch_normalization_19_layer_call_fn_299483

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_2970742
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ы	
▐
E__inference_conv2d_15_layer_call_and_return_conditional_losses_299187

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
▄
к
7__inference_batch_normalization_17_layer_call_fn_299113

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2974202
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┌
к
7__inference_batch_normalization_18_layer_call_fn_299321

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_2975142
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ы	
▐
E__inference_conv2d_13_layer_call_and_return_conditional_losses_297211

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:            ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_7_layer_call_fn_296945

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_2969392
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
с
}
(__inference_dense_6_layer_call_fn_299391

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2976232
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А 
 
_user_specified_nameinputs
Я
J
.__inference_activation_23_layer_call_fn_299539

inputs
identity╩
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_2977482
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*&
_input_shapes
:         
:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
┬
ї
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298903

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Ж
Щ
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_297514

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Б

*__inference_conv2d_15_layer_call_fn_299196

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_2974662
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
·
ї
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298746

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
─
e
F__inference_dropout_10_layer_call_and_return_conditional_losses_299346

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╬
Щ
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_296891

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
═
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_299500

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╨
┘
$__inference_signature_wrapper_298246
conv2d_12_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_2965052
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:           
)
_user_specified_nameconv2d_12_input
Ж
Щ
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_297259

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
┐
J
.__inference_activation_20_layer_call_fn_299049

inputs
identity╥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_2973752
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ы	
▐
E__inference_conv2d_14_layer_call_and_return_conditional_losses_299030

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
а0
╔
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_299437

inputs
assignmovingavg_299412
assignmovingavg_1_299418)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИв#AssignMovingAvg/AssignSubVariableOpвAssignMovingAvg/ReadVariableOpв%AssignMovingAvg_1/AssignSubVariableOpв AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/Squeeze_1╠
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/299412*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayФ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_299412*
_output_shapes	
:А*
dtype02 
AssignMovingAvg/ReadVariableOpЄ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/299412*
_output_shapes	
:А2
AssignMovingAvg/subщ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/299412*
_output_shapes	
:А2
AssignMovingAvg/mulп
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_299412AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/299412*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp╥
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/299418*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayЪ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_299418*
_output_shapes	
:А*
dtype02"
 AssignMovingAvg_1/ReadVariableOp№
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/299418*
_output_shapes	
:А2
AssignMovingAvg_1/subє
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/299418*
_output_shapes	
:А2
AssignMovingAvg_1/mul╗
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_299418AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/299418*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1┤
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ф	
▄
C__inference_dense_7_layer_call_and_return_conditional_losses_297727

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┐
e
I__inference_activation_23_layer_call_and_return_conditional_losses_297748

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:         
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*&
_input_shapes
:         
:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
├
c
*__inference_dropout_9_layer_call_fn_299015

inputs
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_2973262
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*.
_input_shapes
:          22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┐
e
I__inference_activation_23_layer_call_and_return_conditional_losses_299534

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:         
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*&
_input_shapes
:         
:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
в
к
7__inference_batch_normalization_15_layer_call_fn_298823

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_2965672
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
й
F
*__inference_flatten_3_layer_call_fn_299372

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_2976052
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ф	
▄
C__inference_dense_7_layer_call_and_return_conditional_losses_299520

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ХБ
┤
__inference__traced_save_299748
file_prefix/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop;
7savev2_batch_normalization_15_gamma_read_readvariableop:
6savev2_batch_normalization_15_beta_read_readvariableopA
=savev2_batch_normalization_15_moving_mean_read_readvariableopE
Asavev2_batch_normalization_15_moving_variance_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop;
7savev2_batch_normalization_16_gamma_read_readvariableop:
6savev2_batch_normalization_16_beta_read_readvariableopA
=savev2_batch_normalization_16_moving_mean_read_readvariableopE
Asavev2_batch_normalization_16_moving_variance_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop;
7savev2_batch_normalization_17_gamma_read_readvariableop:
6savev2_batch_normalization_17_beta_read_readvariableopA
=savev2_batch_normalization_17_moving_mean_read_readvariableopE
Asavev2_batch_normalization_17_moving_variance_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop;
7savev2_batch_normalization_18_gamma_read_readvariableop:
6savev2_batch_normalization_18_beta_read_readvariableopA
=savev2_batch_normalization_18_moving_mean_read_readvariableopE
Asavev2_batch_normalization_18_moving_variance_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop;
7savev2_batch_normalization_19_gamma_read_readvariableop:
6savev2_batch_normalization_19_beta_read_readvariableopA
=savev2_batch_normalization_19_moving_mean_read_readvariableopE
Asavev2_batch_normalization_19_moving_variance_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_sgd_conv2d_12_kernel_momentum_read_readvariableop:
6savev2_sgd_conv2d_12_bias_momentum_read_readvariableopH
Dsavev2_sgd_batch_normalization_15_gamma_momentum_read_readvariableopG
Csavev2_sgd_batch_normalization_15_beta_momentum_read_readvariableop<
8savev2_sgd_conv2d_13_kernel_momentum_read_readvariableop:
6savev2_sgd_conv2d_13_bias_momentum_read_readvariableopH
Dsavev2_sgd_batch_normalization_16_gamma_momentum_read_readvariableopG
Csavev2_sgd_batch_normalization_16_beta_momentum_read_readvariableop<
8savev2_sgd_conv2d_14_kernel_momentum_read_readvariableop:
6savev2_sgd_conv2d_14_bias_momentum_read_readvariableopH
Dsavev2_sgd_batch_normalization_17_gamma_momentum_read_readvariableopG
Csavev2_sgd_batch_normalization_17_beta_momentum_read_readvariableop<
8savev2_sgd_conv2d_15_kernel_momentum_read_readvariableop:
6savev2_sgd_conv2d_15_bias_momentum_read_readvariableopH
Dsavev2_sgd_batch_normalization_18_gamma_momentum_read_readvariableopG
Csavev2_sgd_batch_normalization_18_beta_momentum_read_readvariableop:
6savev2_sgd_dense_6_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_6_bias_momentum_read_readvariableopH
Dsavev2_sgd_batch_normalization_19_gamma_momentum_read_readvariableopG
Csavev2_sgd_batch_normalization_19_beta_momentum_read_readvariableop:
6savev2_sgd_dense_7_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_7_bias_momentum_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЩ"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*л!
valueб!BЮ!?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЙ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*У
valueЙBЖ?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╚
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop7savev2_batch_normalization_15_gamma_read_readvariableop6savev2_batch_normalization_15_beta_read_readvariableop=savev2_batch_normalization_15_moving_mean_read_readvariableopAsavev2_batch_normalization_15_moving_variance_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop7savev2_batch_normalization_16_gamma_read_readvariableop6savev2_batch_normalization_16_beta_read_readvariableop=savev2_batch_normalization_16_moving_mean_read_readvariableopAsavev2_batch_normalization_16_moving_variance_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop7savev2_batch_normalization_17_gamma_read_readvariableop6savev2_batch_normalization_17_beta_read_readvariableop=savev2_batch_normalization_17_moving_mean_read_readvariableopAsavev2_batch_normalization_17_moving_variance_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop7savev2_batch_normalization_18_gamma_read_readvariableop6savev2_batch_normalization_18_beta_read_readvariableop=savev2_batch_normalization_18_moving_mean_read_readvariableopAsavev2_batch_normalization_18_moving_variance_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop7savev2_batch_normalization_19_gamma_read_readvariableop6savev2_batch_normalization_19_beta_read_readvariableop=savev2_batch_normalization_19_moving_mean_read_readvariableopAsavev2_batch_normalization_19_moving_variance_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_sgd_conv2d_12_kernel_momentum_read_readvariableop6savev2_sgd_conv2d_12_bias_momentum_read_readvariableopDsavev2_sgd_batch_normalization_15_gamma_momentum_read_readvariableopCsavev2_sgd_batch_normalization_15_beta_momentum_read_readvariableop8savev2_sgd_conv2d_13_kernel_momentum_read_readvariableop6savev2_sgd_conv2d_13_bias_momentum_read_readvariableopDsavev2_sgd_batch_normalization_16_gamma_momentum_read_readvariableopCsavev2_sgd_batch_normalization_16_beta_momentum_read_readvariableop8savev2_sgd_conv2d_14_kernel_momentum_read_readvariableop6savev2_sgd_conv2d_14_bias_momentum_read_readvariableopDsavev2_sgd_batch_normalization_17_gamma_momentum_read_readvariableopCsavev2_sgd_batch_normalization_17_beta_momentum_read_readvariableop8savev2_sgd_conv2d_15_kernel_momentum_read_readvariableop6savev2_sgd_conv2d_15_bias_momentum_read_readvariableopDsavev2_sgd_batch_normalization_18_gamma_momentum_read_readvariableopCsavev2_sgd_batch_normalization_18_beta_momentum_read_readvariableop6savev2_sgd_dense_6_kernel_momentum_read_readvariableop4savev2_sgd_dense_6_bias_momentum_read_readvariableopDsavev2_sgd_batch_normalization_19_gamma_momentum_read_readvariableopCsavev2_sgd_batch_normalization_19_beta_momentum_read_readvariableop6savev2_sgd_dense_7_kernel_momentum_read_readvariableop4savev2_sgd_dense_7_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *M
dtypesC
A2?	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*ы
_input_shapes┘
╓: : : : : : : :  : : : : : : @:@:@:@:@:@:@@:@:@:@:@:@:
А А:А:А:А:А:А:	А
:
: : : : : : : : : : : : :  : : : : @:@:@:@:@@:@:@:@:
А А:А:А:А:	А
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
А А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:%!

_output_shapes
:	А
:  

_output_shapes
:
:!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :,)(
&
_output_shapes
: : *

_output_shapes
: : +

_output_shapes
: : ,

_output_shapes
: :,-(
&
_output_shapes
:  : .

_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: :,1(
&
_output_shapes
: @: 2

_output_shapes
:@: 3

_output_shapes
:@: 4

_output_shapes
:@:,5(
&
_output_shapes
:@@: 6

_output_shapes
:@: 7

_output_shapes
:@: 8

_output_shapes
:@:&9"
 
_output_shapes
:
А А:!:

_output_shapes	
:А:!;

_output_shapes	
:А:!<

_output_shapes	
:А:%=!

_output_shapes
:	А
: >

_output_shapes
:
:?

_output_shapes
: 
у
Й
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_297074

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1▄
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ж
Щ
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298728

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Ж
Щ
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298949

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Ў
т
-__inference_sequential_3_layer_call_fn_298009
conv2d_12_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identityИвStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_2979422
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:           
)
_user_specified_nameconv2d_12_input
Ж
Щ
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_297402

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
й
d
+__inference_dropout_11_layer_call_fn_299505

inputs
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_2976992
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Б

*__inference_conv2d_12_layer_call_fn_298698

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_2970992
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:           ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╬
Щ
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298792

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╫
e
I__inference_activation_18_layer_call_and_return_conditional_losses_297120

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:            2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
─
e
F__inference_dropout_10_layer_call_and_return_conditional_losses_297581

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ы	
▐
E__inference_conv2d_12_layer_call_and_return_conditional_losses_298689

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:           ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╫
e
I__inference_activation_18_layer_call_and_return_conditional_losses_298703

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:            2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
А
т
-__inference_sequential_3_layer_call_fn_298169
conv2d_12_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_2981022
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:           
)
_user_specified_nameconv2d_12_input
в
к
7__inference_batch_normalization_16_layer_call_fn_298916

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2966712
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
▄
к
7__inference_batch_normalization_15_layer_call_fn_298772

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_2971652
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╖
F
*__inference_dropout_9_layer_call_fn_299020

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_2973312
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
█
┘
-__inference_sequential_3_layer_call_fn_298610

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_2979422
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
┌
к
7__inference_batch_normalization_17_layer_call_fn_299100

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2974022
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╜
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_299367

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
·
ї
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_297420

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╬
Щ
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299133

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
щ
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_297586

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ж
Щ
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_297147

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Ж
Щ
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299290

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╬
Щ
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299226

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
·
ї
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299308

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ж
Щ
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299069

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╫
e
I__inference_activation_21_layer_call_and_return_conditional_losses_299201

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
·
ї
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299087

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╬
Щ
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_296567

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┌
к
7__inference_batch_normalization_16_layer_call_fn_298980

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2972592
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
ы	
▐
E__inference_conv2d_14_layer_call_and_return_conditional_losses_297354

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╫
e
I__inference_activation_19_layer_call_and_return_conditional_losses_298860

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:            2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Б

*__inference_conv2d_14_layer_call_fn_299039

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_2973542
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:          ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Э
G
+__inference_dropout_11_layer_call_fn_299510

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_2977042
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┐
J
.__inference_activation_19_layer_call_fn_298865

inputs
identity╥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_19_layer_call_and_return_conditional_losses_2972322
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
┐
J
.__inference_activation_18_layer_call_fn_298708

inputs
identity╥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_18_layer_call_and_return_conditional_losses_2971202
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
у
Й
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_299457

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1▄
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
├
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_297326

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:          2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:          2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_296719

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Фо
у
H__inference_sequential_3_layer_call_and_return_conditional_losses_298541

inputs,
(conv2d_12_conv2d_readvariableop_resource-
)conv2d_12_biasadd_readvariableop_resource2
.batch_normalization_15_readvariableop_resource4
0batch_normalization_15_readvariableop_1_resourceC
?batch_normalization_15_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource2
.batch_normalization_16_readvariableop_resource4
0batch_normalization_16_readvariableop_1_resourceC
?batch_normalization_16_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_14_conv2d_readvariableop_resource-
)conv2d_14_biasadd_readvariableop_resource2
.batch_normalization_17_readvariableop_resource4
0batch_normalization_17_readvariableop_1_resourceC
?batch_normalization_17_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_15_conv2d_readvariableop_resource-
)conv2d_15_biasadd_readvariableop_resource2
.batch_normalization_18_readvariableop_resource4
0batch_normalization_18_readvariableop_1_resourceC
?batch_normalization_18_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource<
8batch_normalization_19_batchnorm_readvariableop_resource@
<batch_normalization_19_batchnorm_mul_readvariableop_resource>
:batch_normalization_19_batchnorm_readvariableop_1_resource>
:batch_normalization_19_batchnorm_readvariableop_2_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identityИв6batch_normalization_15/FusedBatchNormV3/ReadVariableOpв8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_15/ReadVariableOpв'batch_normalization_15/ReadVariableOp_1в6batch_normalization_16/FusedBatchNormV3/ReadVariableOpв8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_16/ReadVariableOpв'batch_normalization_16/ReadVariableOp_1в6batch_normalization_17/FusedBatchNormV3/ReadVariableOpв8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_17/ReadVariableOpв'batch_normalization_17/ReadVariableOp_1в6batch_normalization_18/FusedBatchNormV3/ReadVariableOpв8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_18/ReadVariableOpв'batch_normalization_18/ReadVariableOp_1в/batch_normalization_19/batchnorm/ReadVariableOpв1batch_normalization_19/batchnorm/ReadVariableOp_1в1batch_normalization_19/batchnorm/ReadVariableOp_2в3batch_normalization_19/batchnorm/mul/ReadVariableOpв conv2d_12/BiasAdd/ReadVariableOpвconv2d_12/Conv2D/ReadVariableOpв conv2d_13/BiasAdd/ReadVariableOpвconv2d_13/Conv2D/ReadVariableOpв conv2d_14/BiasAdd/ReadVariableOpвconv2d_14/Conv2D/ReadVariableOpв conv2d_15/BiasAdd/ReadVariableOpвconv2d_15/Conv2D/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOp│
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_12/Conv2D/ReadVariableOp┴
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_12/Conv2Dк
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp░
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_12/BiasAddЖ
activation_18/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:            2
activation_18/Relu╣
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_15/ReadVariableOp┐
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_15/ReadVariableOp_1ь
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ю
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3 activation_18/Relu:activations:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 2)
'batch_normalization_15/FusedBatchNormV3│
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_13/Conv2D/ReadVariableOpц
conv2d_13/Conv2DConv2D+batch_normalization_15/FusedBatchNormV3:y:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_13/Conv2Dк
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp░
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_13/BiasAddЖ
activation_19/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:            2
activation_19/Relu╣
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_16/ReadVariableOp┐
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_16/ReadVariableOp_1ь
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ю
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3 activation_19/Relu:activations:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 2)
'batch_normalization_16/FusedBatchNormV3╫
max_pooling2d_6/MaxPoolMaxPool+batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_6/MaxPoolР
dropout_9/IdentityIdentity max_pooling2d_6/MaxPool:output:0*
T0*/
_output_shapes
:          2
dropout_9/Identity│
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_14/Conv2D/ReadVariableOp╓
conv2d_14/Conv2DConv2Ddropout_9/Identity:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_14/Conv2Dк
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp░
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_14/BiasAddЖ
activation_20/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
activation_20/Relu╣
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_17/ReadVariableOp┐
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_17/ReadVariableOp_1ь
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ю
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3 activation_20/Relu:activations:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_17/FusedBatchNormV3│
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOpц
conv2d_15/Conv2DConv2D+batch_normalization_17/FusedBatchNormV3:y:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_15/Conv2Dк
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp░
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_15/BiasAddЖ
activation_21/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
activation_21/Relu╣
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_18/ReadVariableOp┐
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_18/ReadVariableOp_1ь
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ю
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3 activation_21/Relu:activations:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_18/FusedBatchNormV3╫
max_pooling2d_7/MaxPoolMaxPool+batch_normalization_18/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_7/MaxPoolТ
dropout_10/IdentityIdentity max_pooling2d_7/MaxPool:output:0*
T0*/
_output_shapes
:         @2
dropout_10/Identitys
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_3/ConstЬ
flatten_3/ReshapeReshapedropout_10/Identity:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:         А 2
flatten_3/Reshapeз
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02
dense_6/MatMul/ReadVariableOpа
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_6/MatMulе
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_6/BiasAdd/ReadVariableOpв
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_6/BiasAdd}
activation_22/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
activation_22/Relu╪
/batch_normalization_19/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_19_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype021
/batch_normalization_19/batchnorm/ReadVariableOpХ
&batch_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_19/batchnorm/add/yх
$batch_normalization_19/batchnorm/addAddV27batch_normalization_19/batchnorm/ReadVariableOp:value:0/batch_normalization_19/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2&
$batch_normalization_19/batchnorm/addй
&batch_normalization_19/batchnorm/RsqrtRsqrt(batch_normalization_19/batchnorm/add:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_19/batchnorm/Rsqrtф
3batch_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype025
3batch_normalization_19/batchnorm/mul/ReadVariableOpт
$batch_normalization_19/batchnorm/mulMul*batch_normalization_19/batchnorm/Rsqrt:y:0;batch_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2&
$batch_normalization_19/batchnorm/mul╓
&batch_normalization_19/batchnorm/mul_1Mul activation_22/Relu:activations:0(batch_normalization_19/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2(
&batch_normalization_19/batchnorm/mul_1▐
1batch_normalization_19/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_19_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype023
1batch_normalization_19/batchnorm/ReadVariableOp_1т
&batch_normalization_19/batchnorm/mul_2Mul9batch_normalization_19/batchnorm/ReadVariableOp_1:value:0(batch_normalization_19/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_19/batchnorm/mul_2▐
1batch_normalization_19/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_19_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype023
1batch_normalization_19/batchnorm/ReadVariableOp_2р
$batch_normalization_19/batchnorm/subSub9batch_normalization_19/batchnorm/ReadVariableOp_2:value:0*batch_normalization_19/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2&
$batch_normalization_19/batchnorm/subт
&batch_normalization_19/batchnorm/add_1AddV2*batch_normalization_19/batchnorm/mul_1:z:0(batch_normalization_19/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2(
&batch_normalization_19/batchnorm/add_1Х
dropout_11/IdentityIdentity*batch_normalization_19/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         А2
dropout_11/Identityж
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
dense_7/MatMul/ReadVariableOpб
dense_7/MatMulMatMuldropout_11/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
dense_7/MatMulд
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_7/BiasAdd/ReadVariableOpб
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
dense_7/BiasAddЕ
activation_23/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         
2
activation_23/Softmaxё
IdentityIdentityactivation_23/Softmax:softmax:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_17^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_10^batch_normalization_19/batchnorm/ReadVariableOp2^batch_normalization_19/batchnorm/ReadVariableOp_12^batch_normalization_19/batchnorm/ReadVariableOp_24^batch_normalization_19/batchnorm/mul/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::2p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12b
/batch_normalization_19/batchnorm/ReadVariableOp/batch_normalization_19/batchnorm/ReadVariableOp2f
1batch_normalization_19/batchnorm/ReadVariableOp_11batch_normalization_19/batchnorm/ReadVariableOp_12f
1batch_normalization_19/batchnorm/ReadVariableOp_21batch_normalization_19/batchnorm/ReadVariableOp_22j
3batch_normalization_19/batchnorm/mul/ReadVariableOp3batch_normalization_19/batchnorm/mul/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╬
Щ
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_296671

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ы	
▐
E__inference_conv2d_12_layer_call_and_return_conditional_losses_297099

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:           ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
·
ї
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_297165

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
▄
к
7__inference_batch_normalization_16_layer_call_fn_298993

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2972772
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╬
Щ
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_296787

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┬
ї
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_296818

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┐
J
.__inference_activation_21_layer_call_fn_299206

inputs
identity╥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_2974872
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
▄
к
7__inference_batch_normalization_18_layer_call_fn_299334

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_2975322
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
д
к
7__inference_batch_normalization_17_layer_call_fn_299177

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2968182
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╫
e
I__inference_activation_20_layer_call_and_return_conditional_losses_297375

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┬
ї
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_296598

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
д
к
7__inference_batch_normalization_18_layer_call_fn_299270

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_2969222
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┬
ї
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299151

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
г
J
.__inference_activation_22_layer_call_fn_299401

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_2976442
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╣
G
+__inference_dropout_10_layer_call_fn_299361

inputs
identity╧
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_2975862
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
д
к
7__inference_batch_normalization_16_layer_call_fn_298929

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2967022
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┬
ї
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_296702

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
▀
}
(__inference_dense_7_layer_call_fn_299529

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2977272
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╬
Щ
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298885

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Л
e
F__inference_dropout_11_layer_call_and_return_conditional_losses_299495

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╗
e
I__inference_activation_22_layer_call_and_return_conditional_losses_299396

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:         А2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_296939

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Щ	
▄
C__inference_dense_6_layer_call_and_return_conditional_losses_299382

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddЦ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А 
 
_user_specified_nameinputs
┌
к
7__inference_batch_normalization_15_layer_call_fn_298759

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_2971472
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
├
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_299005

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:          2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:          2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ш
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_297331

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:          2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┬
ї
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299244

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╜
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_297605

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Л
e
F__inference_dropout_11_layer_call_and_return_conditional_losses_297699

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┤k
ь
H__inference_sequential_3_layer_call_and_return_conditional_losses_298102

inputs
conv2d_12_298014
conv2d_12_298016!
batch_normalization_15_298020!
batch_normalization_15_298022!
batch_normalization_15_298024!
batch_normalization_15_298026
conv2d_13_298029
conv2d_13_298031!
batch_normalization_16_298035!
batch_normalization_16_298037!
batch_normalization_16_298039!
batch_normalization_16_298041
conv2d_14_298046
conv2d_14_298048!
batch_normalization_17_298052!
batch_normalization_17_298054!
batch_normalization_17_298056!
batch_normalization_17_298058
conv2d_15_298061
conv2d_15_298063!
batch_normalization_18_298067!
batch_normalization_18_298069!
batch_normalization_18_298071!
batch_normalization_18_298073
dense_6_298079
dense_6_298081!
batch_normalization_19_298085!
batch_normalization_19_298087!
batch_normalization_19_298089!
batch_normalization_19_298091
dense_7_298095
dense_7_298097
identityИв.batch_normalization_15/StatefulPartitionedCallв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв.batch_normalization_18/StatefulPartitionedCallв.batch_normalization_19/StatefulPartitionedCallв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallд
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_12_298014conv2d_12_298016*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_2970992#
!conv2d_12/StatefulPartitionedCallТ
activation_18/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_18_layer_call_and_return_conditional_losses_2971202
activation_18/PartitionedCall╟
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0batch_normalization_15_298020batch_normalization_15_298022batch_normalization_15_298024batch_normalization_15_298026*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_29716520
.batch_normalization_15/StatefulPartitionedCall╒
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0conv2d_13_298029conv2d_13_298031*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_2972112#
!conv2d_13/StatefulPartitionedCallТ
activation_19/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_19_layer_call_and_return_conditional_losses_2972322
activation_19/PartitionedCall╟
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0batch_normalization_16_298035batch_normalization_16_298037batch_normalization_16_298039batch_normalization_16_298041*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_29727720
.batch_normalization_16/StatefulPartitionedCallе
max_pooling2d_6/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_2967192!
max_pooling2d_6/PartitionedCallД
dropout_9/PartitionedCallPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_2973312
dropout_9/PartitionedCall└
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0conv2d_14_298046conv2d_14_298048*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_2973542#
!conv2d_14/StatefulPartitionedCallТ
activation_20/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_2973752
activation_20/PartitionedCall╟
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0batch_normalization_17_298052batch_normalization_17_298054batch_normalization_17_298056batch_normalization_17_298058*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_29742020
.batch_normalization_17/StatefulPartitionedCall╒
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_15_298061conv2d_15_298063*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_2974662#
!conv2d_15/StatefulPartitionedCallТ
activation_21/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_2974872
activation_21/PartitionedCall╟
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0batch_normalization_18_298067batch_normalization_18_298069batch_normalization_18_298071batch_normalization_18_298073*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_29753220
.batch_normalization_18/StatefulPartitionedCallе
max_pooling2d_7/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_2969392!
max_pooling2d_7/PartitionedCallЗ
dropout_10/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_2975862
dropout_10/PartitionedCall°
flatten_3/PartitionedCallPartitionedCall#dropout_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_2976052
flatten_3/PartitionedCallп
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_298079dense_6_298081*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2976232!
dense_6/StatefulPartitionedCallЙ
activation_22/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_2976442
activation_22/PartitionedCall└
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0batch_normalization_19_298085batch_normalization_19_298087batch_normalization_19_298089batch_normalization_19_298091*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_29707420
.batch_normalization_19/StatefulPartitionedCallП
dropout_11/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_2977042
dropout_11/PartitionedCallп
dense_7/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_7_298095dense_7_298097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2977272!
dense_7/StatefulPartitionedCallИ
activation_23/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_2977482
activation_23/PartitionedCall├
IdentityIdentity&activation_23/PartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
Б

*__inference_conv2d_13_layer_call_fn_298855

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_2972112
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:            ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╛
к
7__inference_batch_normalization_19_layer_call_fn_299470

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_2970412
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
·
ї
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_297277

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
·
ї
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_297532

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╫
e
I__inference_activation_20_layer_call_and_return_conditional_losses_299044

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
в
к
7__inference_batch_normalization_18_layer_call_fn_299257

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_2968912
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
жp
у
H__inference_sequential_3_layer_call_and_return_conditional_losses_297757
conv2d_12_input
conv2d_12_297110
conv2d_12_297112!
batch_normalization_15_297192!
batch_normalization_15_297194!
batch_normalization_15_297196!
batch_normalization_15_297198
conv2d_13_297222
conv2d_13_297224!
batch_normalization_16_297304!
batch_normalization_16_297306!
batch_normalization_16_297308!
batch_normalization_16_297310
conv2d_14_297365
conv2d_14_297367!
batch_normalization_17_297447!
batch_normalization_17_297449!
batch_normalization_17_297451!
batch_normalization_17_297453
conv2d_15_297477
conv2d_15_297479!
batch_normalization_18_297559!
batch_normalization_18_297561!
batch_normalization_18_297563!
batch_normalization_18_297565
dense_6_297634
dense_6_297636!
batch_normalization_19_297678!
batch_normalization_19_297680!
batch_normalization_19_297682!
batch_normalization_19_297684
dense_7_297738
dense_7_297740
identityИв.batch_normalization_15/StatefulPartitionedCallв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв.batch_normalization_18/StatefulPartitionedCallв.batch_normalization_19/StatefulPartitionedCallв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallв"dropout_10/StatefulPartitionedCallв"dropout_11/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCallн
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputconv2d_12_297110conv2d_12_297112*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_2970992#
!conv2d_12/StatefulPartitionedCallТ
activation_18/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_18_layer_call_and_return_conditional_losses_2971202
activation_18/PartitionedCall┼
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0batch_normalization_15_297192batch_normalization_15_297194batch_normalization_15_297196batch_normalization_15_297198*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_29714720
.batch_normalization_15/StatefulPartitionedCall╒
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0conv2d_13_297222conv2d_13_297224*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_2972112#
!conv2d_13/StatefulPartitionedCallТ
activation_19/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_19_layer_call_and_return_conditional_losses_2972322
activation_19/PartitionedCall┼
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0batch_normalization_16_297304batch_normalization_16_297306batch_normalization_16_297308batch_normalization_16_297310*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_29725920
.batch_normalization_16/StatefulPartitionedCallе
max_pooling2d_6/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_2967192!
max_pooling2d_6/PartitionedCallЬ
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_2973262#
!dropout_9/StatefulPartitionedCall╚
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0conv2d_14_297365conv2d_14_297367*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_2973542#
!conv2d_14/StatefulPartitionedCallТ
activation_20/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_2973752
activation_20/PartitionedCall┼
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0batch_normalization_17_297447batch_normalization_17_297449batch_normalization_17_297451batch_normalization_17_297453*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_29740220
.batch_normalization_17/StatefulPartitionedCall╒
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_15_297477conv2d_15_297479*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_2974662#
!conv2d_15/StatefulPartitionedCallТ
activation_21/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_2974872
activation_21/PartitionedCall┼
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0batch_normalization_18_297559batch_normalization_18_297561batch_normalization_18_297563batch_normalization_18_297565*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_29751420
.batch_normalization_18/StatefulPartitionedCallе
max_pooling2d_7/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_2969392!
max_pooling2d_7/PartitionedCall├
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_2975812$
"dropout_10/StatefulPartitionedCallА
flatten_3/PartitionedCallPartitionedCall+dropout_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_2976052
flatten_3/PartitionedCallп
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_297634dense_6_297636*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2976232!
dense_6/StatefulPartitionedCallЙ
activation_22/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_2976442
activation_22/PartitionedCall╛
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0batch_normalization_19_297678batch_normalization_19_297680batch_normalization_19_297682batch_normalization_19_297684*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_29704120
.batch_normalization_19/StatefulPartitionedCall╠
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_2976992$
"dropout_11/StatefulPartitionedCall╖
dense_7/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_7_297738dense_7_297740*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2977272!
dense_7/StatefulPartitionedCallИ
activation_23/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_2977482
activation_23/PartitionedCall▒
IdentityIdentity&activation_23/PartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:` \
/
_output_shapes
:           
)
_user_specified_nameconv2d_12_input
Лp
┌
H__inference_sequential_3_layer_call_and_return_conditional_losses_297942

inputs
conv2d_12_297854
conv2d_12_297856!
batch_normalization_15_297860!
batch_normalization_15_297862!
batch_normalization_15_297864!
batch_normalization_15_297866
conv2d_13_297869
conv2d_13_297871!
batch_normalization_16_297875!
batch_normalization_16_297877!
batch_normalization_16_297879!
batch_normalization_16_297881
conv2d_14_297886
conv2d_14_297888!
batch_normalization_17_297892!
batch_normalization_17_297894!
batch_normalization_17_297896!
batch_normalization_17_297898
conv2d_15_297901
conv2d_15_297903!
batch_normalization_18_297907!
batch_normalization_18_297909!
batch_normalization_18_297911!
batch_normalization_18_297913
dense_6_297919
dense_6_297921!
batch_normalization_19_297925!
batch_normalization_19_297927!
batch_normalization_19_297929!
batch_normalization_19_297931
dense_7_297935
dense_7_297937
identityИв.batch_normalization_15/StatefulPartitionedCallв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв.batch_normalization_18/StatefulPartitionedCallв.batch_normalization_19/StatefulPartitionedCallв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallв"dropout_10/StatefulPartitionedCallв"dropout_11/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCallд
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_12_297854conv2d_12_297856*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_2970992#
!conv2d_12/StatefulPartitionedCallТ
activation_18/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_18_layer_call_and_return_conditional_losses_2971202
activation_18/PartitionedCall┼
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0batch_normalization_15_297860batch_normalization_15_297862batch_normalization_15_297864batch_normalization_15_297866*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_29714720
.batch_normalization_15/StatefulPartitionedCall╒
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0conv2d_13_297869conv2d_13_297871*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_2972112#
!conv2d_13/StatefulPartitionedCallТ
activation_19/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_19_layer_call_and_return_conditional_losses_2972322
activation_19/PartitionedCall┼
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0batch_normalization_16_297875batch_normalization_16_297877batch_normalization_16_297879batch_normalization_16_297881*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_29725920
.batch_normalization_16/StatefulPartitionedCallе
max_pooling2d_6/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_2967192!
max_pooling2d_6/PartitionedCallЬ
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_2973262#
!dropout_9/StatefulPartitionedCall╚
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0conv2d_14_297886conv2d_14_297888*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_2973542#
!conv2d_14/StatefulPartitionedCallТ
activation_20/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_2973752
activation_20/PartitionedCall┼
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0batch_normalization_17_297892batch_normalization_17_297894batch_normalization_17_297896batch_normalization_17_297898*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_29740220
.batch_normalization_17/StatefulPartitionedCall╒
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_15_297901conv2d_15_297903*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_2974662#
!conv2d_15/StatefulPartitionedCallТ
activation_21/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_2974872
activation_21/PartitionedCall┼
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0batch_normalization_18_297907batch_normalization_18_297909batch_normalization_18_297911batch_normalization_18_297913*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_29751420
.batch_normalization_18/StatefulPartitionedCallе
max_pooling2d_7/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_2969392!
max_pooling2d_7/PartitionedCall├
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_2975812$
"dropout_10/StatefulPartitionedCallА
flatten_3/PartitionedCallPartitionedCall+dropout_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_2976052
flatten_3/PartitionedCallп
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_297919dense_6_297921*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2976232!
dense_6/StatefulPartitionedCallЙ
activation_22/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_2976442
activation_22/PartitionedCall╛
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0batch_normalization_19_297925batch_normalization_19_297927batch_normalization_19_297929batch_normalization_19_297931*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_29704120
.batch_normalization_19/StatefulPartitionedCall╠
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_2976992$
"dropout_11/StatefulPartitionedCall╖
dense_7/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_7_297935dense_7_297937*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2977272!
dense_7/StatefulPartitionedCallИ
activation_23/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_2977482
activation_23/PartitionedCall▒
IdentityIdentity&activation_23/PartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
в
к
7__inference_batch_normalization_17_layer_call_fn_299164

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2967872
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
х╓
Е 
!__inference__wrapped_model_296505
conv2d_12_input9
5sequential_3_conv2d_12_conv2d_readvariableop_resource:
6sequential_3_conv2d_12_biasadd_readvariableop_resource?
;sequential_3_batch_normalization_15_readvariableop_resourceA
=sequential_3_batch_normalization_15_readvariableop_1_resourceP
Lsequential_3_batch_normalization_15_fusedbatchnormv3_readvariableop_resourceR
Nsequential_3_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource9
5sequential_3_conv2d_13_conv2d_readvariableop_resource:
6sequential_3_conv2d_13_biasadd_readvariableop_resource?
;sequential_3_batch_normalization_16_readvariableop_resourceA
=sequential_3_batch_normalization_16_readvariableop_1_resourceP
Lsequential_3_batch_normalization_16_fusedbatchnormv3_readvariableop_resourceR
Nsequential_3_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource9
5sequential_3_conv2d_14_conv2d_readvariableop_resource:
6sequential_3_conv2d_14_biasadd_readvariableop_resource?
;sequential_3_batch_normalization_17_readvariableop_resourceA
=sequential_3_batch_normalization_17_readvariableop_1_resourceP
Lsequential_3_batch_normalization_17_fusedbatchnormv3_readvariableop_resourceR
Nsequential_3_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource9
5sequential_3_conv2d_15_conv2d_readvariableop_resource:
6sequential_3_conv2d_15_biasadd_readvariableop_resource?
;sequential_3_batch_normalization_18_readvariableop_resourceA
=sequential_3_batch_normalization_18_readvariableop_1_resourceP
Lsequential_3_batch_normalization_18_fusedbatchnormv3_readvariableop_resourceR
Nsequential_3_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource7
3sequential_3_dense_6_matmul_readvariableop_resource8
4sequential_3_dense_6_biasadd_readvariableop_resourceI
Esequential_3_batch_normalization_19_batchnorm_readvariableop_resourceM
Isequential_3_batch_normalization_19_batchnorm_mul_readvariableop_resourceK
Gsequential_3_batch_normalization_19_batchnorm_readvariableop_1_resourceK
Gsequential_3_batch_normalization_19_batchnorm_readvariableop_2_resource7
3sequential_3_dense_7_matmul_readvariableop_resource8
4sequential_3_dense_7_biasadd_readvariableop_resource
identityИвCsequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpвEsequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1в2sequential_3/batch_normalization_15/ReadVariableOpв4sequential_3/batch_normalization_15/ReadVariableOp_1вCsequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOpвEsequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1в2sequential_3/batch_normalization_16/ReadVariableOpв4sequential_3/batch_normalization_16/ReadVariableOp_1вCsequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOpвEsequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1в2sequential_3/batch_normalization_17/ReadVariableOpв4sequential_3/batch_normalization_17/ReadVariableOp_1вCsequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOpвEsequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1в2sequential_3/batch_normalization_18/ReadVariableOpв4sequential_3/batch_normalization_18/ReadVariableOp_1в<sequential_3/batch_normalization_19/batchnorm/ReadVariableOpв>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_1в>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_2в@sequential_3/batch_normalization_19/batchnorm/mul/ReadVariableOpв-sequential_3/conv2d_12/BiasAdd/ReadVariableOpв,sequential_3/conv2d_12/Conv2D/ReadVariableOpв-sequential_3/conv2d_13/BiasAdd/ReadVariableOpв,sequential_3/conv2d_13/Conv2D/ReadVariableOpв-sequential_3/conv2d_14/BiasAdd/ReadVariableOpв,sequential_3/conv2d_14/Conv2D/ReadVariableOpв-sequential_3/conv2d_15/BiasAdd/ReadVariableOpв,sequential_3/conv2d_15/Conv2D/ReadVariableOpв+sequential_3/dense_6/BiasAdd/ReadVariableOpв*sequential_3/dense_6/MatMul/ReadVariableOpв+sequential_3/dense_7/BiasAdd/ReadVariableOpв*sequential_3/dense_7/MatMul/ReadVariableOp┌
,sequential_3/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_3/conv2d_12/Conv2D/ReadVariableOpё
sequential_3/conv2d_12/Conv2DConv2Dconv2d_12_input4sequential_3/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
sequential_3/conv2d_12/Conv2D╤
-sequential_3/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_3/conv2d_12/BiasAdd/ReadVariableOpф
sequential_3/conv2d_12/BiasAddBiasAdd&sequential_3/conv2d_12/Conv2D:output:05sequential_3/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2 
sequential_3/conv2d_12/BiasAddн
sequential_3/activation_18/ReluRelu'sequential_3/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:            2!
sequential_3/activation_18/Reluр
2sequential_3/batch_normalization_15/ReadVariableOpReadVariableOp;sequential_3_batch_normalization_15_readvariableop_resource*
_output_shapes
: *
dtype024
2sequential_3/batch_normalization_15/ReadVariableOpц
4sequential_3/batch_normalization_15/ReadVariableOp_1ReadVariableOp=sequential_3_batch_normalization_15_readvariableop_1_resource*
_output_shapes
: *
dtype026
4sequential_3/batch_normalization_15/ReadVariableOp_1У
Csequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_3_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
Csequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpЩ
Esequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_3_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Esequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1╔
4sequential_3/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3-sequential_3/activation_18/Relu:activations:0:sequential_3/batch_normalization_15/ReadVariableOp:value:0<sequential_3/batch_normalization_15/ReadVariableOp_1:value:0Ksequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Msequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 26
4sequential_3/batch_normalization_15/FusedBatchNormV3┌
,sequential_3/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,sequential_3/conv2d_13/Conv2D/ReadVariableOpЪ
sequential_3/conv2d_13/Conv2DConv2D8sequential_3/batch_normalization_15/FusedBatchNormV3:y:04sequential_3/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
sequential_3/conv2d_13/Conv2D╤
-sequential_3/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_3/conv2d_13/BiasAdd/ReadVariableOpф
sequential_3/conv2d_13/BiasAddBiasAdd&sequential_3/conv2d_13/Conv2D:output:05sequential_3/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2 
sequential_3/conv2d_13/BiasAddн
sequential_3/activation_19/ReluRelu'sequential_3/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:            2!
sequential_3/activation_19/Reluр
2sequential_3/batch_normalization_16/ReadVariableOpReadVariableOp;sequential_3_batch_normalization_16_readvariableop_resource*
_output_shapes
: *
dtype024
2sequential_3/batch_normalization_16/ReadVariableOpц
4sequential_3/batch_normalization_16/ReadVariableOp_1ReadVariableOp=sequential_3_batch_normalization_16_readvariableop_1_resource*
_output_shapes
: *
dtype026
4sequential_3/batch_normalization_16/ReadVariableOp_1У
Csequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_3_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
Csequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOpЩ
Esequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_3_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Esequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1╔
4sequential_3/batch_normalization_16/FusedBatchNormV3FusedBatchNormV3-sequential_3/activation_19/Relu:activations:0:sequential_3/batch_normalization_16/ReadVariableOp:value:0<sequential_3/batch_normalization_16/ReadVariableOp_1:value:0Ksequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0Msequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 26
4sequential_3/batch_normalization_16/FusedBatchNormV3■
$sequential_3/max_pooling2d_6/MaxPoolMaxPool8sequential_3/batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_6/MaxPool╖
sequential_3/dropout_9/IdentityIdentity-sequential_3/max_pooling2d_6/MaxPool:output:0*
T0*/
_output_shapes
:          2!
sequential_3/dropout_9/Identity┌
,sequential_3/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_3/conv2d_14/Conv2D/ReadVariableOpК
sequential_3/conv2d_14/Conv2DConv2D(sequential_3/dropout_9/Identity:output:04sequential_3/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
sequential_3/conv2d_14/Conv2D╤
-sequential_3/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_3/conv2d_14/BiasAdd/ReadVariableOpф
sequential_3/conv2d_14/BiasAddBiasAdd&sequential_3/conv2d_14/Conv2D:output:05sequential_3/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
sequential_3/conv2d_14/BiasAddн
sequential_3/activation_20/ReluRelu'sequential_3/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:         @2!
sequential_3/activation_20/Reluр
2sequential_3/batch_normalization_17/ReadVariableOpReadVariableOp;sequential_3_batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential_3/batch_normalization_17/ReadVariableOpц
4sequential_3/batch_normalization_17/ReadVariableOp_1ReadVariableOp=sequential_3_batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4sequential_3/batch_normalization_17/ReadVariableOp_1У
Csequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_3_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Csequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOpЩ
Esequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_3_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Esequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1╔
4sequential_3/batch_normalization_17/FusedBatchNormV3FusedBatchNormV3-sequential_3/activation_20/Relu:activations:0:sequential_3/batch_normalization_17/ReadVariableOp:value:0<sequential_3/batch_normalization_17/ReadVariableOp_1:value:0Ksequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0Msequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4sequential_3/batch_normalization_17/FusedBatchNormV3┌
,sequential_3/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_3/conv2d_15/Conv2D/ReadVariableOpЪ
sequential_3/conv2d_15/Conv2DConv2D8sequential_3/batch_normalization_17/FusedBatchNormV3:y:04sequential_3/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
sequential_3/conv2d_15/Conv2D╤
-sequential_3/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_3/conv2d_15/BiasAdd/ReadVariableOpф
sequential_3/conv2d_15/BiasAddBiasAdd&sequential_3/conv2d_15/Conv2D:output:05sequential_3/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
sequential_3/conv2d_15/BiasAddн
sequential_3/activation_21/ReluRelu'sequential_3/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:         @2!
sequential_3/activation_21/Reluр
2sequential_3/batch_normalization_18/ReadVariableOpReadVariableOp;sequential_3_batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential_3/batch_normalization_18/ReadVariableOpц
4sequential_3/batch_normalization_18/ReadVariableOp_1ReadVariableOp=sequential_3_batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4sequential_3/batch_normalization_18/ReadVariableOp_1У
Csequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_3_batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Csequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOpЩ
Esequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_3_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Esequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1╔
4sequential_3/batch_normalization_18/FusedBatchNormV3FusedBatchNormV3-sequential_3/activation_21/Relu:activations:0:sequential_3/batch_normalization_18/ReadVariableOp:value:0<sequential_3/batch_normalization_18/ReadVariableOp_1:value:0Ksequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0Msequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4sequential_3/batch_normalization_18/FusedBatchNormV3■
$sequential_3/max_pooling2d_7/MaxPoolMaxPool8sequential_3/batch_normalization_18/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_7/MaxPool╣
 sequential_3/dropout_10/IdentityIdentity-sequential_3/max_pooling2d_7/MaxPool:output:0*
T0*/
_output_shapes
:         @2"
 sequential_3/dropout_10/IdentityН
sequential_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
sequential_3/flatten_3/Const╨
sequential_3/flatten_3/ReshapeReshape)sequential_3/dropout_10/Identity:output:0%sequential_3/flatten_3/Const:output:0*
T0*(
_output_shapes
:         А 2 
sequential_3/flatten_3/Reshape╬
*sequential_3/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02,
*sequential_3/dense_6/MatMul/ReadVariableOp╘
sequential_3/dense_6/MatMulMatMul'sequential_3/flatten_3/Reshape:output:02sequential_3/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential_3/dense_6/MatMul╠
+sequential_3/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+sequential_3/dense_6/BiasAdd/ReadVariableOp╓
sequential_3/dense_6/BiasAddBiasAdd%sequential_3/dense_6/MatMul:product:03sequential_3/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential_3/dense_6/BiasAddд
sequential_3/activation_22/ReluRelu%sequential_3/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:         А2!
sequential_3/activation_22/Relu 
<sequential_3/batch_normalization_19/batchnorm/ReadVariableOpReadVariableOpEsequential_3_batch_normalization_19_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<sequential_3/batch_normalization_19/batchnorm/ReadVariableOpп
3sequential_3/batch_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:25
3sequential_3/batch_normalization_19/batchnorm/add/yЩ
1sequential_3/batch_normalization_19/batchnorm/addAddV2Dsequential_3/batch_normalization_19/batchnorm/ReadVariableOp:value:0<sequential_3/batch_normalization_19/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А23
1sequential_3/batch_normalization_19/batchnorm/add╨
3sequential_3/batch_normalization_19/batchnorm/RsqrtRsqrt5sequential_3/batch_normalization_19/batchnorm/add:z:0*
T0*
_output_shapes	
:А25
3sequential_3/batch_normalization_19/batchnorm/RsqrtЛ
@sequential_3/batch_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_3_batch_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02B
@sequential_3/batch_normalization_19/batchnorm/mul/ReadVariableOpЦ
1sequential_3/batch_normalization_19/batchnorm/mulMul7sequential_3/batch_normalization_19/batchnorm/Rsqrt:y:0Hsequential_3/batch_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А23
1sequential_3/batch_normalization_19/batchnorm/mulК
3sequential_3/batch_normalization_19/batchnorm/mul_1Mul-sequential_3/activation_22/Relu:activations:05sequential_3/batch_normalization_19/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А25
3sequential_3/batch_normalization_19/batchnorm/mul_1Е
>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_3_batch_normalization_19_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_1Ц
3sequential_3/batch_normalization_19/batchnorm/mul_2MulFsequential_3/batch_normalization_19/batchnorm/ReadVariableOp_1:value:05sequential_3/batch_normalization_19/batchnorm/mul:z:0*
T0*
_output_shapes	
:А25
3sequential_3/batch_normalization_19/batchnorm/mul_2Е
>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_3_batch_normalization_19_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02@
>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_2Ф
1sequential_3/batch_normalization_19/batchnorm/subSubFsequential_3/batch_normalization_19/batchnorm/ReadVariableOp_2:value:07sequential_3/batch_normalization_19/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А23
1sequential_3/batch_normalization_19/batchnorm/subЦ
3sequential_3/batch_normalization_19/batchnorm/add_1AddV27sequential_3/batch_normalization_19/batchnorm/mul_1:z:05sequential_3/batch_normalization_19/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А25
3sequential_3/batch_normalization_19/batchnorm/add_1╝
 sequential_3/dropout_11/IdentityIdentity7sequential_3/batch_normalization_19/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         А2"
 sequential_3/dropout_11/Identity═
*sequential_3/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_7_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02,
*sequential_3/dense_7/MatMul/ReadVariableOp╒
sequential_3/dense_7/MatMulMatMul)sequential_3/dropout_11/Identity:output:02sequential_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
sequential_3/dense_7/MatMul╦
+sequential_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_3/dense_7/BiasAdd/ReadVariableOp╒
sequential_3/dense_7/BiasAddBiasAdd%sequential_3/dense_7/MatMul:product:03sequential_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
sequential_3/dense_7/BiasAddм
"sequential_3/activation_23/SoftmaxSoftmax%sequential_3/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         
2$
"sequential_3/activation_23/SoftmaxЮ
IdentityIdentity,sequential_3/activation_23/Softmax:softmax:0D^sequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpF^sequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_13^sequential_3/batch_normalization_15/ReadVariableOp5^sequential_3/batch_normalization_15/ReadVariableOp_1D^sequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOpF^sequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_13^sequential_3/batch_normalization_16/ReadVariableOp5^sequential_3/batch_normalization_16/ReadVariableOp_1D^sequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOpF^sequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_13^sequential_3/batch_normalization_17/ReadVariableOp5^sequential_3/batch_normalization_17/ReadVariableOp_1D^sequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOpF^sequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_13^sequential_3/batch_normalization_18/ReadVariableOp5^sequential_3/batch_normalization_18/ReadVariableOp_1=^sequential_3/batch_normalization_19/batchnorm/ReadVariableOp?^sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_1?^sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_2A^sequential_3/batch_normalization_19/batchnorm/mul/ReadVariableOp.^sequential_3/conv2d_12/BiasAdd/ReadVariableOp-^sequential_3/conv2d_12/Conv2D/ReadVariableOp.^sequential_3/conv2d_13/BiasAdd/ReadVariableOp-^sequential_3/conv2d_13/Conv2D/ReadVariableOp.^sequential_3/conv2d_14/BiasAdd/ReadVariableOp-^sequential_3/conv2d_14/Conv2D/ReadVariableOp.^sequential_3/conv2d_15/BiasAdd/ReadVariableOp-^sequential_3/conv2d_15/Conv2D/ReadVariableOp,^sequential_3/dense_6/BiasAdd/ReadVariableOp+^sequential_3/dense_6/MatMul/ReadVariableOp,^sequential_3/dense_7/BiasAdd/ReadVariableOp+^sequential_3/dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::2К
Csequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpCsequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2О
Esequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Esequential_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12h
2sequential_3/batch_normalization_15/ReadVariableOp2sequential_3/batch_normalization_15/ReadVariableOp2l
4sequential_3/batch_normalization_15/ReadVariableOp_14sequential_3/batch_normalization_15/ReadVariableOp_12К
Csequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOpCsequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2О
Esequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Esequential_3/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12h
2sequential_3/batch_normalization_16/ReadVariableOp2sequential_3/batch_normalization_16/ReadVariableOp2l
4sequential_3/batch_normalization_16/ReadVariableOp_14sequential_3/batch_normalization_16/ReadVariableOp_12К
Csequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOpCsequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2О
Esequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Esequential_3/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12h
2sequential_3/batch_normalization_17/ReadVariableOp2sequential_3/batch_normalization_17/ReadVariableOp2l
4sequential_3/batch_normalization_17/ReadVariableOp_14sequential_3/batch_normalization_17/ReadVariableOp_12К
Csequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOpCsequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOp2О
Esequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1Esequential_3/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12h
2sequential_3/batch_normalization_18/ReadVariableOp2sequential_3/batch_normalization_18/ReadVariableOp2l
4sequential_3/batch_normalization_18/ReadVariableOp_14sequential_3/batch_normalization_18/ReadVariableOp_12|
<sequential_3/batch_normalization_19/batchnorm/ReadVariableOp<sequential_3/batch_normalization_19/batchnorm/ReadVariableOp2А
>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_1>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_12А
>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_2>sequential_3/batch_normalization_19/batchnorm/ReadVariableOp_22Д
@sequential_3/batch_normalization_19/batchnorm/mul/ReadVariableOp@sequential_3/batch_normalization_19/batchnorm/mul/ReadVariableOp2^
-sequential_3/conv2d_12/BiasAdd/ReadVariableOp-sequential_3/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_12/Conv2D/ReadVariableOp,sequential_3/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_13/BiasAdd/ReadVariableOp-sequential_3/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_13/Conv2D/ReadVariableOp,sequential_3/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_14/BiasAdd/ReadVariableOp-sequential_3/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_14/Conv2D/ReadVariableOp,sequential_3/conv2d_14/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_15/BiasAdd/ReadVariableOp-sequential_3/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_15/Conv2D/ReadVariableOp,sequential_3/conv2d_15/Conv2D/ReadVariableOp2Z
+sequential_3/dense_6/BiasAdd/ReadVariableOp+sequential_3/dense_6/BiasAdd/ReadVariableOp2X
*sequential_3/dense_6/MatMul/ReadVariableOp*sequential_3/dense_6/MatMul/ReadVariableOp2Z
+sequential_3/dense_7/BiasAdd/ReadVariableOp+sequential_3/dense_7/BiasAdd/ReadVariableOp2X
*sequential_3/dense_7/MatMul/ReadVariableOp*sequential_3/dense_7/MatMul/ReadVariableOp:` \
/
_output_shapes
:           
)
_user_specified_nameconv2d_12_input
╫
e
I__inference_activation_21_layer_call_and_return_conditional_losses_297487

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
х
┘
-__inference_sequential_3_layer_call_fn_298679

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identityИвStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_2981022
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
а0
╔
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_297041

inputs
assignmovingavg_297016
assignmovingavg_1_297022)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИв#AssignMovingAvg/AssignSubVariableOpвAssignMovingAvg/ReadVariableOpв%AssignMovingAvg_1/AssignSubVariableOpв AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/Squeeze_1╠
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/297016*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayФ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_297016*
_output_shapes	
:А*
dtype02 
AssignMovingAvg/ReadVariableOpЄ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/297016*
_output_shapes	
:А2
AssignMovingAvg/subщ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/297016*
_output_shapes	
:А2
AssignMovingAvg/mulп
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_297016AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/297016*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp╥
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/297022*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayЪ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_297022*
_output_shapes	
:А*
dtype02"
 AssignMovingAvg_1/ReadVariableOp№
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/297022*
_output_shapes	
:А2
AssignMovingAvg_1/subє
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/297022*
_output_shapes	
:А2
AssignMovingAvg_1/mul╗
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_297022AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/297022*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1┤
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┼
d
+__inference_dropout_10_layer_call_fn_299356

inputs
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_2975812
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┬
ї
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298810

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ы	
▐
E__inference_conv2d_13_layer_call_and_return_conditional_losses_298846

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:            ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Щ	
▄
C__inference_dense_6_layer_call_and_return_conditional_losses_297623

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddЦ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А 
 
_user_specified_nameinputs
·
ї
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298967

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╧k
ї
H__inference_sequential_3_layer_call_and_return_conditional_losses_297848
conv2d_12_input
conv2d_12_297760
conv2d_12_297762!
batch_normalization_15_297766!
batch_normalization_15_297768!
batch_normalization_15_297770!
batch_normalization_15_297772
conv2d_13_297775
conv2d_13_297777!
batch_normalization_16_297781!
batch_normalization_16_297783!
batch_normalization_16_297785!
batch_normalization_16_297787
conv2d_14_297792
conv2d_14_297794!
batch_normalization_17_297798!
batch_normalization_17_297800!
batch_normalization_17_297802!
batch_normalization_17_297804
conv2d_15_297807
conv2d_15_297809!
batch_normalization_18_297813!
batch_normalization_18_297815!
batch_normalization_18_297817!
batch_normalization_18_297819
dense_6_297825
dense_6_297827!
batch_normalization_19_297831!
batch_normalization_19_297833!
batch_normalization_19_297835!
batch_normalization_19_297837
dense_7_297841
dense_7_297843
identityИв.batch_normalization_15/StatefulPartitionedCallв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв.batch_normalization_18/StatefulPartitionedCallв.batch_normalization_19/StatefulPartitionedCallв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallн
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputconv2d_12_297760conv2d_12_297762*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_2970992#
!conv2d_12/StatefulPartitionedCallТ
activation_18/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_18_layer_call_and_return_conditional_losses_2971202
activation_18/PartitionedCall╟
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0batch_normalization_15_297766batch_normalization_15_297768batch_normalization_15_297770batch_normalization_15_297772*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_29716520
.batch_normalization_15/StatefulPartitionedCall╒
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0conv2d_13_297775conv2d_13_297777*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_2972112#
!conv2d_13/StatefulPartitionedCallТ
activation_19/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_19_layer_call_and_return_conditional_losses_2972322
activation_19/PartitionedCall╟
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0batch_normalization_16_297781batch_normalization_16_297783batch_normalization_16_297785batch_normalization_16_297787*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_29727720
.batch_normalization_16/StatefulPartitionedCallе
max_pooling2d_6/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_2967192!
max_pooling2d_6/PartitionedCallД
dropout_9/PartitionedCallPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_2973312
dropout_9/PartitionedCall└
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0conv2d_14_297792conv2d_14_297794*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_2973542#
!conv2d_14/StatefulPartitionedCallТ
activation_20/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_2973752
activation_20/PartitionedCall╟
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0batch_normalization_17_297798batch_normalization_17_297800batch_normalization_17_297802batch_normalization_17_297804*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_29742020
.batch_normalization_17/StatefulPartitionedCall╒
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_15_297807conv2d_15_297809*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_2974662#
!conv2d_15/StatefulPartitionedCallТ
activation_21/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_2974872
activation_21/PartitionedCall╟
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0batch_normalization_18_297813batch_normalization_18_297815batch_normalization_18_297817batch_normalization_18_297819*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_29753220
.batch_normalization_18/StatefulPartitionedCallе
max_pooling2d_7/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_2969392!
max_pooling2d_7/PartitionedCallЗ
dropout_10/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_2975862
dropout_10/PartitionedCall°
flatten_3/PartitionedCallPartitionedCall#dropout_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_2976052
flatten_3/PartitionedCallп
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_297825dense_6_297827*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2976232!
dense_6/StatefulPartitionedCallЙ
activation_22/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_2976442
activation_22/PartitionedCall└
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0batch_normalization_19_297831batch_normalization_19_297833batch_normalization_19_297835batch_normalization_19_297837*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_29707420
.batch_normalization_19/StatefulPartitionedCallП
dropout_11/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_2977042
dropout_11/PartitionedCallп
dense_7/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_7_297841dense_7_297843*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2977272!
dense_7/StatefulPartitionedCallИ
activation_23/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_2977482
activation_23/PartitionedCall├
IdentityIdentity&activation_23/PartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:` \
/
_output_shapes
:           
)
_user_specified_nameconv2d_12_input
╗
e
I__inference_activation_22_layer_call_and_return_conditional_losses_297644

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:         А2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
вЪ
Щ
H__inference_sequential_3_layer_call_and_return_conditional_losses_298416

inputs,
(conv2d_12_conv2d_readvariableop_resource-
)conv2d_12_biasadd_readvariableop_resource2
.batch_normalization_15_readvariableop_resource4
0batch_normalization_15_readvariableop_1_resourceC
?batch_normalization_15_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource2
.batch_normalization_16_readvariableop_resource4
0batch_normalization_16_readvariableop_1_resourceC
?batch_normalization_16_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_14_conv2d_readvariableop_resource-
)conv2d_14_biasadd_readvariableop_resource2
.batch_normalization_17_readvariableop_resource4
0batch_normalization_17_readvariableop_1_resourceC
?batch_normalization_17_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_15_conv2d_readvariableop_resource-
)conv2d_15_biasadd_readvariableop_resource2
.batch_normalization_18_readvariableop_resource4
0batch_normalization_18_readvariableop_1_resourceC
?batch_normalization_18_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource1
-batch_normalization_19_assignmovingavg_2983763
/batch_normalization_19_assignmovingavg_1_298382@
<batch_normalization_19_batchnorm_mul_readvariableop_resource<
8batch_normalization_19_batchnorm_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identityИв%batch_normalization_15/AssignNewValueв'batch_normalization_15/AssignNewValue_1в6batch_normalization_15/FusedBatchNormV3/ReadVariableOpв8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_15/ReadVariableOpв'batch_normalization_15/ReadVariableOp_1в%batch_normalization_16/AssignNewValueв'batch_normalization_16/AssignNewValue_1в6batch_normalization_16/FusedBatchNormV3/ReadVariableOpв8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_16/ReadVariableOpв'batch_normalization_16/ReadVariableOp_1в%batch_normalization_17/AssignNewValueв'batch_normalization_17/AssignNewValue_1в6batch_normalization_17/FusedBatchNormV3/ReadVariableOpв8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_17/ReadVariableOpв'batch_normalization_17/ReadVariableOp_1в%batch_normalization_18/AssignNewValueв'batch_normalization_18/AssignNewValue_1в6batch_normalization_18/FusedBatchNormV3/ReadVariableOpв8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_18/ReadVariableOpв'batch_normalization_18/ReadVariableOp_1в:batch_normalization_19/AssignMovingAvg/AssignSubVariableOpв5batch_normalization_19/AssignMovingAvg/ReadVariableOpв<batch_normalization_19/AssignMovingAvg_1/AssignSubVariableOpв7batch_normalization_19/AssignMovingAvg_1/ReadVariableOpв/batch_normalization_19/batchnorm/ReadVariableOpв3batch_normalization_19/batchnorm/mul/ReadVariableOpв conv2d_12/BiasAdd/ReadVariableOpвconv2d_12/Conv2D/ReadVariableOpв conv2d_13/BiasAdd/ReadVariableOpвconv2d_13/Conv2D/ReadVariableOpв conv2d_14/BiasAdd/ReadVariableOpвconv2d_14/Conv2D/ReadVariableOpв conv2d_15/BiasAdd/ReadVariableOpвconv2d_15/Conv2D/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOp│
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_12/Conv2D/ReadVariableOp┴
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_12/Conv2Dк
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp░
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_12/BiasAddЖ
activation_18/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:            2
activation_18/Relu╣
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_15/ReadVariableOp┐
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_15/ReadVariableOp_1ь
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1№
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3 activation_18/Relu:activations:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_15/FusedBatchNormV3╖
%batch_normalization_15/AssignNewValueAssignVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource4batch_normalization_15/FusedBatchNormV3:batch_mean:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_15/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_15/AssignNewValue┼
'batch_normalization_15/AssignNewValue_1AssignVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_15/FusedBatchNormV3:batch_variance:09^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_15/AssignNewValue_1│
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_13/Conv2D/ReadVariableOpц
conv2d_13/Conv2DConv2D+batch_normalization_15/FusedBatchNormV3:y:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_13/Conv2Dк
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp░
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_13/BiasAddЖ
activation_19/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:            2
activation_19/Relu╣
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_16/ReadVariableOp┐
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_16/ReadVariableOp_1ь
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1№
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3 activation_19/Relu:activations:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_16/FusedBatchNormV3╖
%batch_normalization_16/AssignNewValueAssignVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource4batch_normalization_16/FusedBatchNormV3:batch_mean:07^batch_normalization_16/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_16/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_16/AssignNewValue┼
'batch_normalization_16/AssignNewValue_1AssignVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_16/FusedBatchNormV3:batch_variance:09^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_16/AssignNewValue_1╫
max_pooling2d_6/MaxPoolMaxPool+batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_6/MaxPoolw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_9/dropout/Const│
dropout_9/dropout/MulMul max_pooling2d_6/MaxPool:output:0 dropout_9/dropout/Const:output:0*
T0*/
_output_shapes
:          2
dropout_9/dropout/MulВ
dropout_9/dropout/ShapeShape max_pooling2d_6/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape┌
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype020
.dropout_9/dropout/random_uniform/RandomUniformЙ
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2"
 dropout_9/dropout/GreaterEqual/yю
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          2 
dropout_9/dropout/GreaterEqualе
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:          2
dropout_9/dropout/Castк
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*/
_output_shapes
:          2
dropout_9/dropout/Mul_1│
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_14/Conv2D/ReadVariableOp╓
conv2d_14/Conv2DConv2Ddropout_9/dropout/Mul_1:z:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_14/Conv2Dк
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp░
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_14/BiasAddЖ
activation_20/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
activation_20/Relu╣
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_17/ReadVariableOp┐
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_17/ReadVariableOp_1ь
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1№
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3 activation_20/Relu:activations:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_17/FusedBatchNormV3╖
%batch_normalization_17/AssignNewValueAssignVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource4batch_normalization_17/FusedBatchNormV3:batch_mean:07^batch_normalization_17/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_17/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_17/AssignNewValue┼
'batch_normalization_17/AssignNewValue_1AssignVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_17/FusedBatchNormV3:batch_variance:09^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_17/AssignNewValue_1│
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOpц
conv2d_15/Conv2DConv2D+batch_normalization_17/FusedBatchNormV3:y:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_15/Conv2Dк
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp░
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_15/BiasAddЖ
activation_21/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
activation_21/Relu╣
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_18/ReadVariableOp┐
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_18/ReadVariableOp_1ь
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1№
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3 activation_21/Relu:activations:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_18/FusedBatchNormV3╖
%batch_normalization_18/AssignNewValueAssignVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource4batch_normalization_18/FusedBatchNormV3:batch_mean:07^batch_normalization_18/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_18/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_18/AssignNewValue┼
'batch_normalization_18/AssignNewValue_1AssignVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_18/FusedBatchNormV3:batch_variance:09^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_18/AssignNewValue_1╫
max_pooling2d_7/MaxPoolMaxPool+batch_normalization_18/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_7/MaxPooly
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_10/dropout/Const╢
dropout_10/dropout/MulMul max_pooling2d_7/MaxPool:output:0!dropout_10/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout_10/dropout/MulД
dropout_10/dropout/ShapeShape max_pooling2d_7/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_10/dropout/Shape▌
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype021
/dropout_10/dropout/random_uniform/RandomUniformЛ
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2#
!dropout_10/dropout/GreaterEqual/yЄ
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2!
dropout_10/dropout/GreaterEqualи
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout_10/dropout/Castо
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout_10/dropout/Mul_1s
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_3/ConstЬ
flatten_3/ReshapeReshapedropout_10/dropout/Mul_1:z:0flatten_3/Const:output:0*
T0*(
_output_shapes
:         А 2
flatten_3/Reshapeз
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02
dense_6/MatMul/ReadVariableOpа
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_6/MatMulе
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_6/BiasAdd/ReadVariableOpв
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_6/BiasAdd}
activation_22/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
activation_22/Relu╕
5batch_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_19/moments/mean/reduction_indicesя
#batch_normalization_19/moments/meanMean activation_22/Relu:activations:0>batch_normalization_19/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2%
#batch_normalization_19/moments/mean┬
+batch_normalization_19/moments/StopGradientStopGradient,batch_normalization_19/moments/mean:output:0*
T0*
_output_shapes
:	А2-
+batch_normalization_19/moments/StopGradientД
0batch_normalization_19/moments/SquaredDifferenceSquaredDifference activation_22/Relu:activations:04batch_normalization_19/moments/StopGradient:output:0*
T0*(
_output_shapes
:         А22
0batch_normalization_19/moments/SquaredDifference└
9batch_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_19/moments/variance/reduction_indicesП
'batch_normalization_19/moments/varianceMean4batch_normalization_19/moments/SquaredDifference:z:0Bbatch_normalization_19/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2)
'batch_normalization_19/moments/variance╞
&batch_normalization_19/moments/SqueezeSqueeze,batch_normalization_19/moments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2(
&batch_normalization_19/moments/Squeeze╬
(batch_normalization_19/moments/Squeeze_1Squeeze0batch_normalization_19/moments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2*
(batch_normalization_19/moments/Squeeze_1С
,batch_normalization_19/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_19/AssignMovingAvg/298376*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2.
,batch_normalization_19/AssignMovingAvg/decay┘
5batch_normalization_19/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_19_assignmovingavg_298376*
_output_shapes	
:А*
dtype027
5batch_normalization_19/AssignMovingAvg/ReadVariableOpх
*batch_normalization_19/AssignMovingAvg/subSub=batch_normalization_19/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_19/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_19/AssignMovingAvg/298376*
_output_shapes	
:А2,
*batch_normalization_19/AssignMovingAvg/sub▄
*batch_normalization_19/AssignMovingAvg/mulMul.batch_normalization_19/AssignMovingAvg/sub:z:05batch_normalization_19/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_19/AssignMovingAvg/298376*
_output_shapes	
:А2,
*batch_normalization_19/AssignMovingAvg/mul╣
:batch_normalization_19/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_19_assignmovingavg_298376.batch_normalization_19/AssignMovingAvg/mul:z:06^batch_normalization_19/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_19/AssignMovingAvg/298376*
_output_shapes
 *
dtype02<
:batch_normalization_19/AssignMovingAvg/AssignSubVariableOpЧ
.batch_normalization_19/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_19/AssignMovingAvg_1/298382*
_output_shapes
: *
dtype0*
valueB
 *
╫#<20
.batch_normalization_19/AssignMovingAvg_1/decay▀
7batch_normalization_19/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_19_assignmovingavg_1_298382*
_output_shapes	
:А*
dtype029
7batch_normalization_19/AssignMovingAvg_1/ReadVariableOpя
,batch_normalization_19/AssignMovingAvg_1/subSub?batch_normalization_19/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_19/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_19/AssignMovingAvg_1/298382*
_output_shapes	
:А2.
,batch_normalization_19/AssignMovingAvg_1/subц
,batch_normalization_19/AssignMovingAvg_1/mulMul0batch_normalization_19/AssignMovingAvg_1/sub:z:07batch_normalization_19/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_19/AssignMovingAvg_1/298382*
_output_shapes	
:А2.
,batch_normalization_19/AssignMovingAvg_1/mul┼
<batch_normalization_19/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_19_assignmovingavg_1_2983820batch_normalization_19/AssignMovingAvg_1/mul:z:08^batch_normalization_19/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_19/AssignMovingAvg_1/298382*
_output_shapes
 *
dtype02>
<batch_normalization_19/AssignMovingAvg_1/AssignSubVariableOpХ
&batch_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_19/batchnorm/add/y▀
$batch_normalization_19/batchnorm/addAddV21batch_normalization_19/moments/Squeeze_1:output:0/batch_normalization_19/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2&
$batch_normalization_19/batchnorm/addй
&batch_normalization_19/batchnorm/RsqrtRsqrt(batch_normalization_19/batchnorm/add:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_19/batchnorm/Rsqrtф
3batch_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype025
3batch_normalization_19/batchnorm/mul/ReadVariableOpт
$batch_normalization_19/batchnorm/mulMul*batch_normalization_19/batchnorm/Rsqrt:y:0;batch_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2&
$batch_normalization_19/batchnorm/mul╓
&batch_normalization_19/batchnorm/mul_1Mul activation_22/Relu:activations:0(batch_normalization_19/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2(
&batch_normalization_19/batchnorm/mul_1╪
&batch_normalization_19/batchnorm/mul_2Mul/batch_normalization_19/moments/Squeeze:output:0(batch_normalization_19/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_19/batchnorm/mul_2╪
/batch_normalization_19/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_19_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype021
/batch_normalization_19/batchnorm/ReadVariableOp▐
$batch_normalization_19/batchnorm/subSub7batch_normalization_19/batchnorm/ReadVariableOp:value:0*batch_normalization_19/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2&
$batch_normalization_19/batchnorm/subт
&batch_normalization_19/batchnorm/add_1AddV2*batch_normalization_19/batchnorm/mul_1:z:0(batch_normalization_19/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2(
&batch_normalization_19/batchnorm/add_1y
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_11/dropout/Const╣
dropout_11/dropout/MulMul*batch_normalization_19/batchnorm/add_1:z:0!dropout_11/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout_11/dropout/MulО
dropout_11/dropout/ShapeShape*batch_normalization_19/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_11/dropout/Shape╓
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype021
/dropout_11/dropout/random_uniform/RandomUniformЛ
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_11/dropout/GreaterEqual/yы
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2!
dropout_11/dropout/GreaterEqualб
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout_11/dropout/Castз
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout_11/dropout/Mul_1ж
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
dense_7/MatMul/ReadVariableOpб
dense_7/MatMulMatMuldropout_11/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
dense_7/MatMulд
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_7/BiasAdd/ReadVariableOpб
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
dense_7/BiasAddЕ
activation_23/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         
2
activation_23/Softmax┐
IdentityIdentityactivation_23/Softmax:softmax:0&^batch_normalization_15/AssignNewValue(^batch_normalization_15/AssignNewValue_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1&^batch_normalization_16/AssignNewValue(^batch_normalization_16/AssignNewValue_17^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_1&^batch_normalization_17/AssignNewValue(^batch_normalization_17/AssignNewValue_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_1&^batch_normalization_18/AssignNewValue(^batch_normalization_18/AssignNewValue_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_1;^batch_normalization_19/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_19/AssignMovingAvg/ReadVariableOp=^batch_normalization_19/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_19/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_19/batchnorm/ReadVariableOp4^batch_normalization_19/batchnorm/mul/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*░
_input_shapesЮ
Ы:           ::::::::::::::::::::::::::::::::2N
%batch_normalization_15/AssignNewValue%batch_normalization_15/AssignNewValue2R
'batch_normalization_15/AssignNewValue_1'batch_normalization_15/AssignNewValue_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12N
%batch_normalization_16/AssignNewValue%batch_normalization_16/AssignNewValue2R
'batch_normalization_16/AssignNewValue_1'batch_normalization_16/AssignNewValue_12p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12N
%batch_normalization_17/AssignNewValue%batch_normalization_17/AssignNewValue2R
'batch_normalization_17/AssignNewValue_1'batch_normalization_17/AssignNewValue_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12N
%batch_normalization_18/AssignNewValue%batch_normalization_18/AssignNewValue2R
'batch_normalization_18/AssignNewValue_1'batch_normalization_18/AssignNewValue_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12x
:batch_normalization_19/AssignMovingAvg/AssignSubVariableOp:batch_normalization_19/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_19/AssignMovingAvg/ReadVariableOp5batch_normalization_19/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_19/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_19/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_19/AssignMovingAvg_1/ReadVariableOp7batch_normalization_19/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_19/batchnorm/ReadVariableOp/batch_normalization_19/batchnorm/ReadVariableOp2j
3batch_normalization_19/batchnorm/mul/ReadVariableOp3batch_normalization_19/batchnorm/mul/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
ы	
▐
E__inference_conv2d_15_layer_call_and_return_conditional_losses_297466

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_6_layer_call_fn_296725

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_2967192
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
═
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_297704

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┬
ї
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_296922

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
№К
Ы$
"__inference__traced_restore_299944
file_prefix%
!assignvariableop_conv2d_12_kernel%
!assignvariableop_1_conv2d_12_bias3
/assignvariableop_2_batch_normalization_15_gamma2
.assignvariableop_3_batch_normalization_15_beta9
5assignvariableop_4_batch_normalization_15_moving_mean=
9assignvariableop_5_batch_normalization_15_moving_variance'
#assignvariableop_6_conv2d_13_kernel%
!assignvariableop_7_conv2d_13_bias3
/assignvariableop_8_batch_normalization_16_gamma2
.assignvariableop_9_batch_normalization_16_beta:
6assignvariableop_10_batch_normalization_16_moving_mean>
:assignvariableop_11_batch_normalization_16_moving_variance(
$assignvariableop_12_conv2d_14_kernel&
"assignvariableop_13_conv2d_14_bias4
0assignvariableop_14_batch_normalization_17_gamma3
/assignvariableop_15_batch_normalization_17_beta:
6assignvariableop_16_batch_normalization_17_moving_mean>
:assignvariableop_17_batch_normalization_17_moving_variance(
$assignvariableop_18_conv2d_15_kernel&
"assignvariableop_19_conv2d_15_bias4
0assignvariableop_20_batch_normalization_18_gamma3
/assignvariableop_21_batch_normalization_18_beta:
6assignvariableop_22_batch_normalization_18_moving_mean>
:assignvariableop_23_batch_normalization_18_moving_variance&
"assignvariableop_24_dense_6_kernel$
 assignvariableop_25_dense_6_bias4
0assignvariableop_26_batch_normalization_19_gamma3
/assignvariableop_27_batch_normalization_19_beta:
6assignvariableop_28_batch_normalization_19_moving_mean>
:assignvariableop_29_batch_normalization_19_moving_variance&
"assignvariableop_30_dense_7_kernel$
 assignvariableop_31_dense_7_bias 
assignvariableop_32_sgd_iter!
assignvariableop_33_sgd_decay)
%assignvariableop_34_sgd_learning_rate$
 assignvariableop_35_sgd_momentum
assignvariableop_36_total
assignvariableop_37_count
assignvariableop_38_total_1
assignvariableop_39_count_15
1assignvariableop_40_sgd_conv2d_12_kernel_momentum3
/assignvariableop_41_sgd_conv2d_12_bias_momentumA
=assignvariableop_42_sgd_batch_normalization_15_gamma_momentum@
<assignvariableop_43_sgd_batch_normalization_15_beta_momentum5
1assignvariableop_44_sgd_conv2d_13_kernel_momentum3
/assignvariableop_45_sgd_conv2d_13_bias_momentumA
=assignvariableop_46_sgd_batch_normalization_16_gamma_momentum@
<assignvariableop_47_sgd_batch_normalization_16_beta_momentum5
1assignvariableop_48_sgd_conv2d_14_kernel_momentum3
/assignvariableop_49_sgd_conv2d_14_bias_momentumA
=assignvariableop_50_sgd_batch_normalization_17_gamma_momentum@
<assignvariableop_51_sgd_batch_normalization_17_beta_momentum5
1assignvariableop_52_sgd_conv2d_15_kernel_momentum3
/assignvariableop_53_sgd_conv2d_15_bias_momentumA
=assignvariableop_54_sgd_batch_normalization_18_gamma_momentum@
<assignvariableop_55_sgd_batch_normalization_18_beta_momentum3
/assignvariableop_56_sgd_dense_6_kernel_momentum1
-assignvariableop_57_sgd_dense_6_bias_momentumA
=assignvariableop_58_sgd_batch_normalization_19_gamma_momentum@
<assignvariableop_59_sgd_batch_normalization_19_beta_momentum3
/assignvariableop_60_sgd_dense_7_kernel_momentum1
-assignvariableop_61_sgd_dense_7_bias_momentum
identity_63ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Я"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*л!
valueб!BЮ!?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesП
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*У
valueЙBЖ?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesщ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Т
_output_shapes 
№:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*M
dtypesC
A2?	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ж
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2┤
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_15_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3│
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_15_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4║
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_15_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5╛
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_15_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6и
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_13_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ж
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_13_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8┤
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_16_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9│
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_16_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10╛
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_16_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11┬
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_16_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12м
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_14_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13к
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_14_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14╕
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_17_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╖
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_17_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16╛
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_17_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17┬
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_17_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18м
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_15_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19к
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_15_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╕
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_18_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21╖
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_18_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22╛
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_18_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23┬
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_18_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24к
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_6_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25и
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_6_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╕
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_19_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╖
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_19_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╛
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_19_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29┬
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_19_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30к
AssignVariableOp_30AssignVariableOp"assignvariableop_30_dense_7_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31и
AssignVariableOp_31AssignVariableOp assignvariableop_31_dense_7_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_32д
AssignVariableOp_32AssignVariableOpassignvariableop_32_sgd_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33е
AssignVariableOp_33AssignVariableOpassignvariableop_33_sgd_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34н
AssignVariableOp_34AssignVariableOp%assignvariableop_34_sgd_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35и
AssignVariableOp_35AssignVariableOp assignvariableop_35_sgd_momentumIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36б
AssignVariableOp_36AssignVariableOpassignvariableop_36_totalIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37б
AssignVariableOp_37AssignVariableOpassignvariableop_37_countIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38г
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39г
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40╣
AssignVariableOp_40AssignVariableOp1assignvariableop_40_sgd_conv2d_12_kernel_momentumIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41╖
AssignVariableOp_41AssignVariableOp/assignvariableop_41_sgd_conv2d_12_bias_momentumIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42┼
AssignVariableOp_42AssignVariableOp=assignvariableop_42_sgd_batch_normalization_15_gamma_momentumIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43─
AssignVariableOp_43AssignVariableOp<assignvariableop_43_sgd_batch_normalization_15_beta_momentumIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44╣
AssignVariableOp_44AssignVariableOp1assignvariableop_44_sgd_conv2d_13_kernel_momentumIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45╖
AssignVariableOp_45AssignVariableOp/assignvariableop_45_sgd_conv2d_13_bias_momentumIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46┼
AssignVariableOp_46AssignVariableOp=assignvariableop_46_sgd_batch_normalization_16_gamma_momentumIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47─
AssignVariableOp_47AssignVariableOp<assignvariableop_47_sgd_batch_normalization_16_beta_momentumIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48╣
AssignVariableOp_48AssignVariableOp1assignvariableop_48_sgd_conv2d_14_kernel_momentumIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49╖
AssignVariableOp_49AssignVariableOp/assignvariableop_49_sgd_conv2d_14_bias_momentumIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50┼
AssignVariableOp_50AssignVariableOp=assignvariableop_50_sgd_batch_normalization_17_gamma_momentumIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51─
AssignVariableOp_51AssignVariableOp<assignvariableop_51_sgd_batch_normalization_17_beta_momentumIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52╣
AssignVariableOp_52AssignVariableOp1assignvariableop_52_sgd_conv2d_15_kernel_momentumIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53╖
AssignVariableOp_53AssignVariableOp/assignvariableop_53_sgd_conv2d_15_bias_momentumIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54┼
AssignVariableOp_54AssignVariableOp=assignvariableop_54_sgd_batch_normalization_18_gamma_momentumIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55─
AssignVariableOp_55AssignVariableOp<assignvariableop_55_sgd_batch_normalization_18_beta_momentumIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56╖
AssignVariableOp_56AssignVariableOp/assignvariableop_56_sgd_dense_6_kernel_momentumIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57╡
AssignVariableOp_57AssignVariableOp-assignvariableop_57_sgd_dense_6_bias_momentumIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58┼
AssignVariableOp_58AssignVariableOp=assignvariableop_58_sgd_batch_normalization_19_gamma_momentumIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59─
AssignVariableOp_59AssignVariableOp<assignvariableop_59_sgd_batch_normalization_19_beta_momentumIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60╖
AssignVariableOp_60AssignVariableOp/assignvariableop_60_sgd_dense_7_kernel_momentumIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61╡
AssignVariableOp_61AssignVariableOp-assignvariableop_61_sgd_dense_7_bias_momentumIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_619
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp▓
Identity_62Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_62е
Identity_63IdentityIdentity_62:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_63"#
identity_63Identity_63:output:0*П
_input_shapes¤
·: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
щ
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_299351

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ш
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_299010

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:          2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╫
e
I__inference_activation_19_layer_call_and_return_conditional_losses_297232

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:            2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
д
к
7__inference_batch_normalization_15_layer_call_fn_298836

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_2965982
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╚
serving_default┤
S
conv2d_12_input@
!serving_default_conv2d_12_input:0           A
activation_230
StatefulPartitionedCall:0         
tensorflow/serving/predict:╙╖
гФ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
╝__call__
╜_default_save_signature
+╛&call_and_return_all_conditional_losses"¤Н
_tf_keras_sequential▌Н{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_12_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_6", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_18", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_7", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_19", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_12_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_6", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_18", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_7", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_19", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0002500000118743628, "momentum": 0.8999999761581421, "nesterov": true}}}}
ў


kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
┐__call__
+└&call_and_return_all_conditional_losses"╨	
_tf_keras_layer╢	{"class_name": "Conv2D", "name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
┘
$regularization_losses
%	variables
&trainable_variables
'	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"╚
_tf_keras_layerо{"class_name": "Activation", "name": "activation_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}
╛	
(axis
	)gamma
*beta
+moving_mean
,moving_variance
-regularization_losses
.	variables
/trainable_variables
0	keras_api
├__call__
+─&call_and_return_all_conditional_losses"ш
_tf_keras_layer╬{"class_name": "BatchNormalization", "name": "batch_normalization_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
°	

1kernel
2bias
3regularization_losses
4	variables
5trainable_variables
6	keras_api
┼__call__
+╞&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
┘
7regularization_losses
8	variables
9trainable_variables
:	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses"╚
_tf_keras_layerо{"class_name": "Activation", "name": "activation_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}}
╛	
;axis
	<gamma
=beta
>moving_mean
?moving_variance
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"ш
_tf_keras_layer╬{"class_name": "BatchNormalization", "name": "batch_normalization_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
Б
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"Ё
_tf_keras_layer╓{"class_name": "MaxPooling2D", "name": "max_pooling2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_6", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ш
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
═__call__
+╬&call_and_return_all_conditional_losses"╫
_tf_keras_layer╜{"class_name": "Dropout", "name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
°	

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
┘
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
╤__call__
+╥&call_and_return_all_conditional_losses"╚
_tf_keras_layerо{"class_name": "Activation", "name": "activation_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}
╛	
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[regularization_losses
\	variables
]trainable_variables
^	keras_api
╙__call__
+╘&call_and_return_all_conditional_losses"ш
_tf_keras_layer╬{"class_name": "BatchNormalization", "name": "batch_normalization_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
°	

_kernel
`bias
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
╒__call__
+╓&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
┘
eregularization_losses
f	variables
gtrainable_variables
h	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses"╚
_tf_keras_layerо{"class_name": "Activation", "name": "activation_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}
╛	
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
┘__call__
+┌&call_and_return_all_conditional_losses"ш
_tf_keras_layer╬{"class_name": "BatchNormalization", "name": "batch_normalization_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_18", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
Б
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
█__call__
+▄&call_and_return_all_conditional_losses"Ё
_tf_keras_layer╓{"class_name": "MaxPooling2D", "name": "max_pooling2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_7", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ъ
vregularization_losses
w	variables
xtrainable_variables
y	keras_api
▌__call__
+▐&call_and_return_all_conditional_losses"┘
_tf_keras_layer┐{"class_name": "Dropout", "name": "dropout_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
ш
zregularization_losses
{	variables
|trainable_variables
}	keras_api
▀__call__
+р&call_and_return_all_conditional_losses"╫
_tf_keras_layer╜{"class_name": "Flatten", "name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
¤

~kernel
bias
Аregularization_losses
Б	variables
Вtrainable_variables
Г	keras_api
с__call__
+т&call_and_return_all_conditional_losses"╥
_tf_keras_layer╕{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4096}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4096]}}
▌
Дregularization_losses
Е	variables
Жtrainable_variables
З	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"╚
_tf_keras_layerо{"class_name": "Activation", "name": "activation_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}
┴	
	Иaxis

Йgamma
	Кbeta
Лmoving_mean
Мmoving_variance
Нregularization_losses
О	variables
Пtrainable_variables
Р	keras_api
х__call__
+ц&call_and_return_all_conditional_losses"т
_tf_keras_layer╚{"class_name": "BatchNormalization", "name": "batch_normalization_19", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_19", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
э
Сregularization_losses
Т	variables
Уtrainable_variables
Ф	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"╪
_tf_keras_layer╛{"class_name": "Dropout", "name": "dropout_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
№
Хkernel
	Цbias
Чregularization_losses
Ш	variables
Щtrainable_variables
Ъ	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"╧
_tf_keras_layer╡{"class_name": "Dense", "name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
р
Ыregularization_losses
Ь	variables
Эtrainable_variables
Ю	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses"╦
_tf_keras_layer▒{"class_name": "Activation", "name": "activation_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "softmax"}}
╟
	Яiter

аdecay
бlearning_rate
вmomentummomentumжmomentumз)momentumи*momentumй1momentumк2momentumл<momentumм=momentumнLmomentumоMmomentumпWmomentum░Xmomentum▒_momentum▓`momentum│jmomentum┤kmomentum╡~momentum╢momentum╖Йmomentum╕Кmomentum╣Хmomentum║Цmomentum╗"
	optimizer
 "
trackable_list_wrapper
Ь
0
1
)2
*3
+4
,5
16
27
<8
=9
>10
?11
L12
M13
W14
X15
Y16
Z17
_18
`19
j20
k21
l22
m23
~24
25
Й26
К27
Л28
М29
Х30
Ц31"
trackable_list_wrapper
╩
0
1
)2
*3
14
25
<6
=7
L8
M9
W10
X11
_12
`13
j14
k15
~16
17
Й18
К19
Х20
Ц21"
trackable_list_wrapper
╙
 гlayer_regularization_losses
дnon_trainable_variables
еlayer_metrics
regularization_losses
жmetrics
	variables
trainable_variables
зlayers
╝__call__
╜_default_save_signature
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses"
_generic_user_object
-
эserving_default"
signature_map
*:( 2conv2d_12/kernel
: 2conv2d_12/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
╡
 иlayer_regularization_losses
йnon_trainable_variables
кlayer_metrics
 regularization_losses
лmetrics
!	variables
"trainable_variables
мlayers
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
 нlayer_regularization_losses
оnon_trainable_variables
пlayer_metrics
$regularization_losses
░metrics
%	variables
&trainable_variables
▒layers
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_15/gamma
):' 2batch_normalization_15/beta
2:0  (2"batch_normalization_15/moving_mean
6:4  (2&batch_normalization_15/moving_variance
 "
trackable_list_wrapper
<
)0
*1
+2
,3"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
╡
 ▓layer_regularization_losses
│non_trainable_variables
┤layer_metrics
-regularization_losses
╡metrics
.	variables
/trainable_variables
╢layers
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_13/kernel
: 2conv2d_13/bias
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
╡
 ╖layer_regularization_losses
╕non_trainable_variables
╣layer_metrics
3regularization_losses
║metrics
4	variables
5trainable_variables
╗layers
┼__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
 ╝layer_regularization_losses
╜non_trainable_variables
╛layer_metrics
7regularization_losses
┐metrics
8	variables
9trainable_variables
└layers
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_16/gamma
):' 2batch_normalization_16/beta
2:0  (2"batch_normalization_16/moving_mean
6:4  (2&batch_normalization_16/moving_variance
 "
trackable_list_wrapper
<
<0
=1
>2
?3"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
╡
 ┴layer_regularization_losses
┬non_trainable_variables
├layer_metrics
@regularization_losses
─metrics
A	variables
Btrainable_variables
┼layers
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
 ╞layer_regularization_losses
╟non_trainable_variables
╚layer_metrics
Dregularization_losses
╔metrics
E	variables
Ftrainable_variables
╩layers
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
 ╦layer_regularization_losses
╠non_trainable_variables
═layer_metrics
Hregularization_losses
╬metrics
I	variables
Jtrainable_variables
╧layers
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_14/kernel
:@2conv2d_14/bias
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
╡
 ╨layer_regularization_losses
╤non_trainable_variables
╥layer_metrics
Nregularization_losses
╙metrics
O	variables
Ptrainable_variables
╘layers
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
 ╒layer_regularization_losses
╓non_trainable_variables
╫layer_metrics
Rregularization_losses
╪metrics
S	variables
Ttrainable_variables
┘layers
╤__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_17/gamma
):'@2batch_normalization_17/beta
2:0@ (2"batch_normalization_17/moving_mean
6:4@ (2&batch_normalization_17/moving_variance
 "
trackable_list_wrapper
<
W0
X1
Y2
Z3"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
╡
 ┌layer_regularization_losses
█non_trainable_variables
▄layer_metrics
[regularization_losses
▌metrics
\	variables
]trainable_variables
▐layers
╙__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_15/kernel
:@2conv2d_15/bias
 "
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
╡
 ▀layer_regularization_losses
рnon_trainable_variables
сlayer_metrics
aregularization_losses
тmetrics
b	variables
ctrainable_variables
уlayers
╒__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
 фlayer_regularization_losses
хnon_trainable_variables
цlayer_metrics
eregularization_losses
чmetrics
f	variables
gtrainable_variables
шlayers
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_18/gamma
):'@2batch_normalization_18/beta
2:0@ (2"batch_normalization_18/moving_mean
6:4@ (2&batch_normalization_18/moving_variance
 "
trackable_list_wrapper
<
j0
k1
l2
m3"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
╡
 щlayer_regularization_losses
ъnon_trainable_variables
ыlayer_metrics
nregularization_losses
ьmetrics
o	variables
ptrainable_variables
эlayers
┘__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
 юlayer_regularization_losses
яnon_trainable_variables
Ёlayer_metrics
rregularization_losses
ёmetrics
s	variables
ttrainable_variables
Єlayers
█__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
 єlayer_regularization_losses
Їnon_trainable_variables
їlayer_metrics
vregularization_losses
Ўmetrics
w	variables
xtrainable_variables
ўlayers
▌__call__
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
 °layer_regularization_losses
∙non_trainable_variables
·layer_metrics
zregularization_losses
√metrics
{	variables
|trainable_variables
№layers
▀__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
": 
А А2dense_6/kernel
:А2dense_6/bias
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
╕
 ¤layer_regularization_losses
■non_trainable_variables
 layer_metrics
Аregularization_losses
Аmetrics
Б	variables
Вtrainable_variables
Бlayers
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
 Вlayer_regularization_losses
Гnon_trainable_variables
Дlayer_metrics
Дregularization_losses
Еmetrics
Е	variables
Жtrainable_variables
Жlayers
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)А2batch_normalization_19/gamma
*:(А2batch_normalization_19/beta
3:1А (2"batch_normalization_19/moving_mean
7:5А (2&batch_normalization_19/moving_variance
 "
trackable_list_wrapper
@
Й0
К1
Л2
М3"
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
╕
 Зlayer_regularization_losses
Иnon_trainable_variables
Йlayer_metrics
Нregularization_losses
Кmetrics
О	variables
Пtrainable_variables
Лlayers
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
 Мlayer_regularization_losses
Нnon_trainable_variables
Оlayer_metrics
Сregularization_losses
Пmetrics
Т	variables
Уtrainable_variables
Рlayers
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
!:	А
2dense_7/kernel
:
2dense_7/bias
 "
trackable_list_wrapper
0
Х0
Ц1"
trackable_list_wrapper
0
Х0
Ц1"
trackable_list_wrapper
╕
 Сlayer_regularization_losses
Тnon_trainable_variables
Уlayer_metrics
Чregularization_losses
Фmetrics
Ш	variables
Щtrainable_variables
Хlayers
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
 Цlayer_regularization_losses
Чnon_trainable_variables
Шlayer_metrics
Ыregularization_losses
Щmetrics
Ь	variables
Эtrainable_variables
Ъlayers
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
h
+0
,1
>2
?3
Y4
Z5
l6
m7
Л8
М9"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
Ы0
Ь1"
trackable_list_wrapper
╬
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
15
16
17
18
19
20
21
22"
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
.
+0
,1"
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
.
>0
?1"
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
.
Y0
Z1"
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
.
l0
m1"
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
0
Л0
М1"
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
┐

Эtotal

Юcount
Я	variables
а	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Д

бtotal

вcount
г
_fn_kwargs
д	variables
е	keras_api"╕
_tf_keras_metricЭ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
Э0
Ю1"
trackable_list_wrapper
.
Я	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
б0
в1"
trackable_list_wrapper
.
д	variables"
_generic_user_object
5:3 2SGD/conv2d_12/kernel/momentum
':% 2SGD/conv2d_12/bias/momentum
5:3 2)SGD/batch_normalization_15/gamma/momentum
4:2 2(SGD/batch_normalization_15/beta/momentum
5:3  2SGD/conv2d_13/kernel/momentum
':% 2SGD/conv2d_13/bias/momentum
5:3 2)SGD/batch_normalization_16/gamma/momentum
4:2 2(SGD/batch_normalization_16/beta/momentum
5:3 @2SGD/conv2d_14/kernel/momentum
':%@2SGD/conv2d_14/bias/momentum
5:3@2)SGD/batch_normalization_17/gamma/momentum
4:2@2(SGD/batch_normalization_17/beta/momentum
5:3@@2SGD/conv2d_15/kernel/momentum
':%@2SGD/conv2d_15/bias/momentum
5:3@2)SGD/batch_normalization_18/gamma/momentum
4:2@2(SGD/batch_normalization_18/beta/momentum
-:+
А А2SGD/dense_6/kernel/momentum
&:$А2SGD/dense_6/bias/momentum
6:4А2)SGD/batch_normalization_19/gamma/momentum
5:3А2(SGD/batch_normalization_19/beta/momentum
,:*	А
2SGD/dense_7/kernel/momentum
%:#
2SGD/dense_7/bias/momentum
В2 
-__inference_sequential_3_layer_call_fn_298169
-__inference_sequential_3_layer_call_fn_298679
-__inference_sequential_3_layer_call_fn_298009
-__inference_sequential_3_layer_call_fn_298610└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
!__inference__wrapped_model_296505╞
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *6в3
1К.
conv2d_12_input           
ю2ы
H__inference_sequential_3_layer_call_and_return_conditional_losses_298541
H__inference_sequential_3_layer_call_and_return_conditional_losses_298416
H__inference_sequential_3_layer_call_and_return_conditional_losses_297757
H__inference_sequential_3_layer_call_and_return_conditional_losses_297848└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘2╤
*__inference_conv2d_12_layer_call_fn_298698в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_12_layer_call_and_return_conditional_losses_298689в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_18_layer_call_fn_298708в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_18_layer_call_and_return_conditional_losses_298703в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_15_layer_call_fn_298823
7__inference_batch_normalization_15_layer_call_fn_298772
7__inference_batch_normalization_15_layer_call_fn_298836
7__inference_batch_normalization_15_layer_call_fn_298759┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
К2З
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298728
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298746
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298792
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298810┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘2╤
*__inference_conv2d_13_layer_call_fn_298855в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_13_layer_call_and_return_conditional_losses_298846в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_19_layer_call_fn_298865в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_19_layer_call_and_return_conditional_losses_298860в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_16_layer_call_fn_298916
7__inference_batch_normalization_16_layer_call_fn_298980
7__inference_batch_normalization_16_layer_call_fn_298993
7__inference_batch_normalization_16_layer_call_fn_298929┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
К2З
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298885
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298949
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298903
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298967┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ш2Х
0__inference_max_pooling2d_6_layer_call_fn_296725р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_296719р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Т2П
*__inference_dropout_9_layer_call_fn_299020
*__inference_dropout_9_layer_call_fn_299015┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_9_layer_call_and_return_conditional_losses_299005
E__inference_dropout_9_layer_call_and_return_conditional_losses_299010┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘2╤
*__inference_conv2d_14_layer_call_fn_299039в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_14_layer_call_and_return_conditional_losses_299030в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_20_layer_call_fn_299049в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_20_layer_call_and_return_conditional_losses_299044в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_17_layer_call_fn_299177
7__inference_batch_normalization_17_layer_call_fn_299100
7__inference_batch_normalization_17_layer_call_fn_299113
7__inference_batch_normalization_17_layer_call_fn_299164┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
К2З
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299151
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299069
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299133
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299087┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘2╤
*__inference_conv2d_15_layer_call_fn_299196в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_15_layer_call_and_return_conditional_losses_299187в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_21_layer_call_fn_299206в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_21_layer_call_and_return_conditional_losses_299201в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_18_layer_call_fn_299270
7__inference_batch_normalization_18_layer_call_fn_299257
7__inference_batch_normalization_18_layer_call_fn_299321
7__inference_batch_normalization_18_layer_call_fn_299334┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
К2З
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299226
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299244
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299308
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299290┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ш2Х
0__inference_max_pooling2d_7_layer_call_fn_296945р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_296939р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ф2С
+__inference_dropout_10_layer_call_fn_299356
+__inference_dropout_10_layer_call_fn_299361┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
F__inference_dropout_10_layer_call_and_return_conditional_losses_299351
F__inference_dropout_10_layer_call_and_return_conditional_losses_299346┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘2╤
*__inference_flatten_3_layer_call_fn_299372в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_flatten_3_layer_call_and_return_conditional_losses_299367в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_dense_6_layer_call_fn_299391в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_6_layer_call_and_return_conditional_losses_299382в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_22_layer_call_fn_299401в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_22_layer_call_and_return_conditional_losses_299396в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
м2й
7__inference_batch_normalization_19_layer_call_fn_299483
7__inference_batch_normalization_19_layer_call_fn_299470┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
т2▀
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_299457
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_299437┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ф2С
+__inference_dropout_11_layer_call_fn_299505
+__inference_dropout_11_layer_call_fn_299510┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
F__inference_dropout_11_layer_call_and_return_conditional_losses_299495
F__inference_dropout_11_layer_call_and_return_conditional_losses_299500┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╥2╧
(__inference_dense_7_layer_call_fn_299529в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_7_layer_call_and_return_conditional_losses_299520в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_23_layer_call_fn_299539в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_23_layer_call_and_return_conditional_losses_299534в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙B╨
$__inference_signature_wrapper_298246conv2d_12_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ╧
!__inference__wrapped_model_296505й&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦ@в=
6в3
1К.
conv2d_12_input           
к "=к:
8
activation_23'К$
activation_23         
╡
I__inference_activation_18_layer_call_and_return_conditional_losses_298703h7в4
-в*
(К%
inputs            
к "-в*
#К 
0            
Ъ Н
.__inference_activation_18_layer_call_fn_298708[7в4
-в*
(К%
inputs            
к " К            ╡
I__inference_activation_19_layer_call_and_return_conditional_losses_298860h7в4
-в*
(К%
inputs            
к "-в*
#К 
0            
Ъ Н
.__inference_activation_19_layer_call_fn_298865[7в4
-в*
(К%
inputs            
к " К            ╡
I__inference_activation_20_layer_call_and_return_conditional_losses_299044h7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Н
.__inference_activation_20_layer_call_fn_299049[7в4
-в*
(К%
inputs         @
к " К         @╡
I__inference_activation_21_layer_call_and_return_conditional_losses_299201h7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Н
.__inference_activation_21_layer_call_fn_299206[7в4
-в*
(К%
inputs         @
к " К         @з
I__inference_activation_22_layer_call_and_return_conditional_losses_299396Z0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ 
.__inference_activation_22_layer_call_fn_299401M0в-
&в#
!К
inputs         А
к "К         Ае
I__inference_activation_23_layer_call_and_return_conditional_losses_299534X/в,
%в"
 К
inputs         

к "%в"
К
0         

Ъ }
.__inference_activation_23_layer_call_fn_299539K/в,
%в"
 К
inputs         

к "К         
╚
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298728r)*+,;в8
1в.
(К%
inputs            
p
к "-в*
#К 
0            
Ъ ╚
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298746r)*+,;в8
1в.
(К%
inputs            
p 
к "-в*
#К 
0            
Ъ э
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298792Ц)*+,MвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ э
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_298810Ц)*+,MвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ а
7__inference_batch_normalization_15_layer_call_fn_298759e)*+,;в8
1в.
(К%
inputs            
p
к " К            а
7__inference_batch_normalization_15_layer_call_fn_298772e)*+,;в8
1в.
(К%
inputs            
p 
к " К            ┼
7__inference_batch_normalization_15_layer_call_fn_298823Й)*+,MвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            ┼
7__inference_batch_normalization_15_layer_call_fn_298836Й)*+,MвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            э
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298885Ц<=>?MвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ э
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298903Ц<=>?MвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ ╚
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298949r<=>?;в8
1в.
(К%
inputs            
p
к "-в*
#К 
0            
Ъ ╚
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_298967r<=>?;в8
1в.
(К%
inputs            
p 
к "-в*
#К 
0            
Ъ ┼
7__inference_batch_normalization_16_layer_call_fn_298916Й<=>?MвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            ┼
7__inference_batch_normalization_16_layer_call_fn_298929Й<=>?MвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            а
7__inference_batch_normalization_16_layer_call_fn_298980e<=>?;в8
1в.
(К%
inputs            
p
к " К            а
7__inference_batch_normalization_16_layer_call_fn_298993e<=>?;в8
1в.
(К%
inputs            
p 
к " К            ╚
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299069rWXYZ;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ╚
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299087rWXYZ;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ э
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299133ЦWXYZMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ э
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_299151ЦWXYZMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ а
7__inference_batch_normalization_17_layer_call_fn_299100eWXYZ;в8
1в.
(К%
inputs         @
p
к " К         @а
7__inference_batch_normalization_17_layer_call_fn_299113eWXYZ;в8
1в.
(К%
inputs         @
p 
к " К         @┼
7__inference_batch_normalization_17_layer_call_fn_299164ЙWXYZMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @┼
7__inference_batch_normalization_17_layer_call_fn_299177ЙWXYZMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @э
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299226ЦjklmMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ э
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299244ЦjklmMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ╚
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299290rjklm;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ╚
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_299308rjklm;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ┼
7__inference_batch_normalization_18_layer_call_fn_299257ЙjklmMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @┼
7__inference_batch_normalization_18_layer_call_fn_299270ЙjklmMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @а
7__inference_batch_normalization_18_layer_call_fn_299321ejklm;в8
1в.
(К%
inputs         @
p
к " К         @а
7__inference_batch_normalization_18_layer_call_fn_299334ejklm;в8
1в.
(К%
inputs         @
p 
к " К         @╛
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_299437hЛМЙК4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ ╛
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_299457hМЙЛК4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ Ц
7__inference_batch_normalization_19_layer_call_fn_299470[ЛМЙК4в1
*в'
!К
inputs         А
p
к "К         АЦ
7__inference_batch_normalization_19_layer_call_fn_299483[МЙЛК4в1
*в'
!К
inputs         А
p 
к "К         А╡
E__inference_conv2d_12_layer_call_and_return_conditional_losses_298689l7в4
-в*
(К%
inputs           
к "-в*
#К 
0            
Ъ Н
*__inference_conv2d_12_layer_call_fn_298698_7в4
-в*
(К%
inputs           
к " К            ╡
E__inference_conv2d_13_layer_call_and_return_conditional_losses_298846l127в4
-в*
(К%
inputs            
к "-в*
#К 
0            
Ъ Н
*__inference_conv2d_13_layer_call_fn_298855_127в4
-в*
(К%
inputs            
к " К            ╡
E__inference_conv2d_14_layer_call_and_return_conditional_losses_299030lLM7в4
-в*
(К%
inputs          
к "-в*
#К 
0         @
Ъ Н
*__inference_conv2d_14_layer_call_fn_299039_LM7в4
-в*
(К%
inputs          
к " К         @╡
E__inference_conv2d_15_layer_call_and_return_conditional_losses_299187l_`7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Н
*__inference_conv2d_15_layer_call_fn_299196__`7в4
-в*
(К%
inputs         @
к " К         @е
C__inference_dense_6_layer_call_and_return_conditional_losses_299382^~0в-
&в#
!К
inputs         А 
к "&в#
К
0         А
Ъ }
(__inference_dense_6_layer_call_fn_299391Q~0в-
&в#
!К
inputs         А 
к "К         Аж
C__inference_dense_7_layer_call_and_return_conditional_losses_299520_ХЦ0в-
&в#
!К
inputs         А
к "%в"
К
0         

Ъ ~
(__inference_dense_7_layer_call_fn_299529RХЦ0в-
&в#
!К
inputs         А
к "К         
╢
F__inference_dropout_10_layer_call_and_return_conditional_losses_299346l;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ╢
F__inference_dropout_10_layer_call_and_return_conditional_losses_299351l;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ О
+__inference_dropout_10_layer_call_fn_299356_;в8
1в.
(К%
inputs         @
p
к " К         @О
+__inference_dropout_10_layer_call_fn_299361_;в8
1в.
(К%
inputs         @
p 
к " К         @и
F__inference_dropout_11_layer_call_and_return_conditional_losses_299495^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ и
F__inference_dropout_11_layer_call_and_return_conditional_losses_299500^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ А
+__inference_dropout_11_layer_call_fn_299505Q4в1
*в'
!К
inputs         А
p
к "К         АА
+__inference_dropout_11_layer_call_fn_299510Q4в1
*в'
!К
inputs         А
p 
к "К         А╡
E__inference_dropout_9_layer_call_and_return_conditional_losses_299005l;в8
1в.
(К%
inputs          
p
к "-в*
#К 
0          
Ъ ╡
E__inference_dropout_9_layer_call_and_return_conditional_losses_299010l;в8
1в.
(К%
inputs          
p 
к "-в*
#К 
0          
Ъ Н
*__inference_dropout_9_layer_call_fn_299015_;в8
1в.
(К%
inputs          
p
к " К          Н
*__inference_dropout_9_layer_call_fn_299020_;в8
1в.
(К%
inputs          
p 
к " К          к
E__inference_flatten_3_layer_call_and_return_conditional_losses_299367a7в4
-в*
(К%
inputs         @
к "&в#
К
0         А 
Ъ В
*__inference_flatten_3_layer_call_fn_299372T7в4
-в*
(К%
inputs         @
к "К         А ю
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_296719ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_6_layer_call_fn_296725СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_296939ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_7_layer_call_fn_296945СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ц
H__inference_sequential_3_layer_call_and_return_conditional_losses_297757Щ&)*+,12<=>?LMWXYZ_`jklm~ЛМЙКХЦHвE
>в;
1К.
conv2d_12_input           
p

 
к "%в"
К
0         

Ъ ц
H__inference_sequential_3_layer_call_and_return_conditional_losses_297848Щ&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦHвE
>в;
1К.
conv2d_12_input           
p 

 
к "%в"
К
0         

Ъ ▌
H__inference_sequential_3_layer_call_and_return_conditional_losses_298416Р&)*+,12<=>?LMWXYZ_`jklm~ЛМЙКХЦ?в<
5в2
(К%
inputs           
p

 
к "%в"
К
0         

Ъ ▌
H__inference_sequential_3_layer_call_and_return_conditional_losses_298541Р&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦ?в<
5в2
(К%
inputs           
p 

 
к "%в"
К
0         

Ъ ╛
-__inference_sequential_3_layer_call_fn_298009М&)*+,12<=>?LMWXYZ_`jklm~ЛМЙКХЦHвE
>в;
1К.
conv2d_12_input           
p

 
к "К         
╛
-__inference_sequential_3_layer_call_fn_298169М&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦHвE
>в;
1К.
conv2d_12_input           
p 

 
к "К         
╡
-__inference_sequential_3_layer_call_fn_298610Г&)*+,12<=>?LMWXYZ_`jklm~ЛМЙКХЦ?в<
5в2
(К%
inputs           
p

 
к "К         
╡
-__inference_sequential_3_layer_call_fn_298679Г&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦ?в<
5в2
(К%
inputs           
p 

 
к "К         
х
$__inference_signature_wrapper_298246╝&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦSвP
в 
IкF
D
conv2d_12_input1К.
conv2d_12_input           "=к:
8
activation_23'К$
activation_23         
