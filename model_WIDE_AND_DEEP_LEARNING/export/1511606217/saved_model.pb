гЪ'
з( (
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	АР
Ш
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
ґ
AsString

input"T

output"
Ttype:
	2	
"
	precisionint€€€€€€€€€"

scientificbool( "
shortestbool( "
widthint€€€€€€€€€"
fillstring 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
К
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
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
К
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
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
/
Sigmoid
x"T
y"T"
Ttype:	
2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
р
SparseCross
indices	*N
values2sparse_types
shapes	*N
dense_inputs2dense_types
output_indices	
output_values"out_type
output_shape	"

Nint("
hashed_outputbool"
num_bucketsint("
hash_keyint"$
sparse_types
list(type)(:
2	"#
dense_types
list(type)(:
2	"
out_typetype:
2	"
internal_typetype:
2	
Ј
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
А
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2		"
Tidxtype0:
2	
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
Й
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И

Where	
input
	
index	
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.3.02
b'unknown'§Ы%

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
П
global_step
VariableV2*
shared_name *
_output_shapes
: *
	container *
shape: *
dtype0	*
_class
loc:@global_step
≤
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_class
loc:@global_step*
use_locking(*
_output_shapes
: *
T0	*
validate_shape(
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0	
f
PlaceholderPlaceholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_1Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_2Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_3Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_4Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_5Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_6Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_7Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_8Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_9Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_10Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_11Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_12Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_13Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_14Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_15Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_16Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_17Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_18Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_19Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_20Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_21Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_22Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_23Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_24Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_25Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_26Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_27Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_28Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_29Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_30Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_31Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_32Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_33Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_34Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_35Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_36Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_37Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
i
Placeholder_38Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
Y
ExpandDims/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
u

ExpandDims
ExpandDimsPlaceholder_6ExpandDims/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_1/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
z
ExpandDims_1
ExpandDimsPlaceholder_36ExpandDims_1/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_2/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
z
ExpandDims_2
ExpandDimsPlaceholder_26ExpandDims_2/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_3/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
y
ExpandDims_3
ExpandDimsPlaceholder_3ExpandDims_3/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_4/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
z
ExpandDims_4
ExpandDimsPlaceholder_24ExpandDims_4/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_5/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
z
ExpandDims_5
ExpandDimsPlaceholder_21ExpandDims_5/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_6/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
z
ExpandDims_6
ExpandDimsPlaceholder_17ExpandDims_6/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_7/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
y
ExpandDims_7
ExpandDimsPlaceholder_8ExpandDims_7/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_8/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
z
ExpandDims_8
ExpandDimsPlaceholder_10ExpandDims_8/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_9/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
z
ExpandDims_9
ExpandDimsPlaceholder_29ExpandDims_9/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_10/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_10
ExpandDimsPlaceholder_13ExpandDims_10/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_11/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_11
ExpandDimsPlaceholder_31ExpandDims_11/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_12/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
{
ExpandDims_12
ExpandDimsPlaceholder_5ExpandDims_12/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_13/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
y
ExpandDims_13
ExpandDimsPlaceholderExpandDims_13/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_14/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_14
ExpandDimsPlaceholder_22ExpandDims_14/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_15/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
{
ExpandDims_15
ExpandDimsPlaceholder_2ExpandDims_15/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_16/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_16
ExpandDimsPlaceholder_19ExpandDims_16/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_17/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_17
ExpandDimsPlaceholder_23ExpandDims_17/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_18/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_18
ExpandDimsPlaceholder_15ExpandDims_18/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_19/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_19
ExpandDimsPlaceholder_28ExpandDims_19/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_20/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_20
ExpandDimsPlaceholder_18ExpandDims_20/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_21/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_21
ExpandDimsPlaceholder_37ExpandDims_21/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_22/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_22
ExpandDimsPlaceholder_11ExpandDims_22/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_23/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_23
ExpandDimsPlaceholder_20ExpandDims_23/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_24/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_24
ExpandDimsPlaceholder_34ExpandDims_24/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_25/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_25
ExpandDimsPlaceholder_38ExpandDims_25/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_26/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_26
ExpandDimsPlaceholder_33ExpandDims_26/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_27/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_27
ExpandDimsPlaceholder_35ExpandDims_27/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_28/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_28
ExpandDimsPlaceholder_25ExpandDims_28/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_29/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
{
ExpandDims_29
ExpandDimsPlaceholder_7ExpandDims_29/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_30/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
{
ExpandDims_30
ExpandDimsPlaceholder_1ExpandDims_30/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_31/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_31
ExpandDimsPlaceholder_16ExpandDims_31/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_32/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_32
ExpandDimsPlaceholder_12ExpandDims_32/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_33/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
{
ExpandDims_33
ExpandDimsPlaceholder_9ExpandDims_33/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_34/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
{
ExpandDims_34
ExpandDimsPlaceholder_4ExpandDims_34/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_35/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_35
ExpandDimsPlaceholder_14ExpandDims_35/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_36/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_36
ExpandDimsPlaceholder_27ExpandDims_36/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_37/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_37
ExpandDimsPlaceholder_32ExpandDims_37/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_38/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
|
ExpandDims_38
ExpandDimsPlaceholder_30ExpandDims_38/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
А
3dnn/input_from_feature_columns/input_layer/I1/ShapeShapeExpandDims_13*
out_type0*
_output_shapes
:*
T0
Л
Adnn/input_from_feature_columns/input_layer/I1/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I1/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I1/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/I1/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/I1/ShapeAdnn/input_from_feature_columns/input_layer/I1/strided_slice/stackCdnn/input_from_feature_columns/input_layer/I1/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/I1/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 

=dnn/input_from_feature_columns/input_layer/I1/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
щ
;dnn/input_from_feature_columns/input_layer/I1/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/I1/strided_slice=dnn/input_from_feature_columns/input_layer/I1/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
ћ
5dnn/input_from_feature_columns/input_layer/I1/ReshapeReshapeExpandDims_13;dnn/input_from_feature_columns/input_layer/I1/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Б
4dnn/input_from_feature_columns/input_layer/I10/ShapeShapeExpandDims_33*
out_type0*
_output_shapes
:*
T0
М
Bdnn/input_from_feature_columns/input_layer/I10/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/I10/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/I10/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
д
<dnn/input_from_feature_columns/input_layer/I10/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/I10/ShapeBdnn/input_from_feature_columns/input_layer/I10/strided_slice/stackDdnn/input_from_feature_columns/input_layer/I10/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/I10/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
А
>dnn/input_from_feature_columns/input_layer/I10/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
ь
<dnn/input_from_feature_columns/input_layer/I10/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/I10/strided_slice>dnn/input_from_feature_columns/input_layer/I10/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
ќ
6dnn/input_from_feature_columns/input_layer/I10/ReshapeReshapeExpandDims_33<dnn/input_from_feature_columns/input_layer/I10/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
А
4dnn/input_from_feature_columns/input_layer/I11/ShapeShapeExpandDims_8*
out_type0*
_output_shapes
:*
T0
М
Bdnn/input_from_feature_columns/input_layer/I11/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/I11/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/I11/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
д
<dnn/input_from_feature_columns/input_layer/I11/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/I11/ShapeBdnn/input_from_feature_columns/input_layer/I11/strided_slice/stackDdnn/input_from_feature_columns/input_layer/I11/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/I11/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
А
>dnn/input_from_feature_columns/input_layer/I11/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
ь
<dnn/input_from_feature_columns/input_layer/I11/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/I11/strided_slice>dnn/input_from_feature_columns/input_layer/I11/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
Ќ
6dnn/input_from_feature_columns/input_layer/I11/ReshapeReshapeExpandDims_8<dnn/input_from_feature_columns/input_layer/I11/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Б
4dnn/input_from_feature_columns/input_layer/I12/ShapeShapeExpandDims_22*
out_type0*
_output_shapes
:*
T0
М
Bdnn/input_from_feature_columns/input_layer/I12/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/I12/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/I12/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
д
<dnn/input_from_feature_columns/input_layer/I12/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/I12/ShapeBdnn/input_from_feature_columns/input_layer/I12/strided_slice/stackDdnn/input_from_feature_columns/input_layer/I12/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/I12/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
А
>dnn/input_from_feature_columns/input_layer/I12/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
ь
<dnn/input_from_feature_columns/input_layer/I12/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/I12/strided_slice>dnn/input_from_feature_columns/input_layer/I12/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
ќ
6dnn/input_from_feature_columns/input_layer/I12/ReshapeReshapeExpandDims_22<dnn/input_from_feature_columns/input_layer/I12/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Б
4dnn/input_from_feature_columns/input_layer/I13/ShapeShapeExpandDims_32*
out_type0*
_output_shapes
:*
T0
М
Bdnn/input_from_feature_columns/input_layer/I13/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/I13/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/I13/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
д
<dnn/input_from_feature_columns/input_layer/I13/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/I13/ShapeBdnn/input_from_feature_columns/input_layer/I13/strided_slice/stackDdnn/input_from_feature_columns/input_layer/I13/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/I13/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
А
>dnn/input_from_feature_columns/input_layer/I13/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
ь
<dnn/input_from_feature_columns/input_layer/I13/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/I13/strided_slice>dnn/input_from_feature_columns/input_layer/I13/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
ќ
6dnn/input_from_feature_columns/input_layer/I13/ReshapeReshapeExpandDims_32<dnn/input_from_feature_columns/input_layer/I13/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
А
3dnn/input_from_feature_columns/input_layer/I2/ShapeShapeExpandDims_30*
out_type0*
_output_shapes
:*
T0
Л
Adnn/input_from_feature_columns/input_layer/I2/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I2/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I2/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/I2/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/I2/ShapeAdnn/input_from_feature_columns/input_layer/I2/strided_slice/stackCdnn/input_from_feature_columns/input_layer/I2/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/I2/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 

=dnn/input_from_feature_columns/input_layer/I2/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
щ
;dnn/input_from_feature_columns/input_layer/I2/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/I2/strided_slice=dnn/input_from_feature_columns/input_layer/I2/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
ћ
5dnn/input_from_feature_columns/input_layer/I2/ReshapeReshapeExpandDims_30;dnn/input_from_feature_columns/input_layer/I2/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
А
3dnn/input_from_feature_columns/input_layer/I3/ShapeShapeExpandDims_15*
out_type0*
_output_shapes
:*
T0
Л
Adnn/input_from_feature_columns/input_layer/I3/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I3/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I3/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/I3/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/I3/ShapeAdnn/input_from_feature_columns/input_layer/I3/strided_slice/stackCdnn/input_from_feature_columns/input_layer/I3/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/I3/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 

=dnn/input_from_feature_columns/input_layer/I3/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
щ
;dnn/input_from_feature_columns/input_layer/I3/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/I3/strided_slice=dnn/input_from_feature_columns/input_layer/I3/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
ћ
5dnn/input_from_feature_columns/input_layer/I3/ReshapeReshapeExpandDims_15;dnn/input_from_feature_columns/input_layer/I3/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

3dnn/input_from_feature_columns/input_layer/I4/ShapeShapeExpandDims_3*
out_type0*
_output_shapes
:*
T0
Л
Adnn/input_from_feature_columns/input_layer/I4/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I4/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I4/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/I4/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/I4/ShapeAdnn/input_from_feature_columns/input_layer/I4/strided_slice/stackCdnn/input_from_feature_columns/input_layer/I4/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/I4/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 

=dnn/input_from_feature_columns/input_layer/I4/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
щ
;dnn/input_from_feature_columns/input_layer/I4/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/I4/strided_slice=dnn/input_from_feature_columns/input_layer/I4/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
Ћ
5dnn/input_from_feature_columns/input_layer/I4/ReshapeReshapeExpandDims_3;dnn/input_from_feature_columns/input_layer/I4/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
А
3dnn/input_from_feature_columns/input_layer/I5/ShapeShapeExpandDims_34*
out_type0*
_output_shapes
:*
T0
Л
Adnn/input_from_feature_columns/input_layer/I5/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I5/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I5/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/I5/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/I5/ShapeAdnn/input_from_feature_columns/input_layer/I5/strided_slice/stackCdnn/input_from_feature_columns/input_layer/I5/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/I5/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 

=dnn/input_from_feature_columns/input_layer/I5/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
щ
;dnn/input_from_feature_columns/input_layer/I5/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/I5/strided_slice=dnn/input_from_feature_columns/input_layer/I5/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
ћ
5dnn/input_from_feature_columns/input_layer/I5/ReshapeReshapeExpandDims_34;dnn/input_from_feature_columns/input_layer/I5/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
А
3dnn/input_from_feature_columns/input_layer/I6/ShapeShapeExpandDims_12*
out_type0*
_output_shapes
:*
T0
Л
Adnn/input_from_feature_columns/input_layer/I6/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I6/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I6/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/I6/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/I6/ShapeAdnn/input_from_feature_columns/input_layer/I6/strided_slice/stackCdnn/input_from_feature_columns/input_layer/I6/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/I6/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 

=dnn/input_from_feature_columns/input_layer/I6/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
щ
;dnn/input_from_feature_columns/input_layer/I6/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/I6/strided_slice=dnn/input_from_feature_columns/input_layer/I6/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
ћ
5dnn/input_from_feature_columns/input_layer/I6/ReshapeReshapeExpandDims_12;dnn/input_from_feature_columns/input_layer/I6/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
}
3dnn/input_from_feature_columns/input_layer/I7/ShapeShape
ExpandDims*
out_type0*
_output_shapes
:*
T0
Л
Adnn/input_from_feature_columns/input_layer/I7/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I7/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I7/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/I7/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/I7/ShapeAdnn/input_from_feature_columns/input_layer/I7/strided_slice/stackCdnn/input_from_feature_columns/input_layer/I7/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/I7/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 

=dnn/input_from_feature_columns/input_layer/I7/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
щ
;dnn/input_from_feature_columns/input_layer/I7/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/I7/strided_slice=dnn/input_from_feature_columns/input_layer/I7/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
…
5dnn/input_from_feature_columns/input_layer/I7/ReshapeReshape
ExpandDims;dnn/input_from_feature_columns/input_layer/I7/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
А
3dnn/input_from_feature_columns/input_layer/I8/ShapeShapeExpandDims_29*
out_type0*
_output_shapes
:*
T0
Л
Adnn/input_from_feature_columns/input_layer/I8/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I8/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I8/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/I8/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/I8/ShapeAdnn/input_from_feature_columns/input_layer/I8/strided_slice/stackCdnn/input_from_feature_columns/input_layer/I8/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/I8/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 

=dnn/input_from_feature_columns/input_layer/I8/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
щ
;dnn/input_from_feature_columns/input_layer/I8/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/I8/strided_slice=dnn/input_from_feature_columns/input_layer/I8/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
ћ
5dnn/input_from_feature_columns/input_layer/I8/ReshapeReshapeExpandDims_29;dnn/input_from_feature_columns/input_layer/I8/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

3dnn/input_from_feature_columns/input_layer/I9/ShapeShapeExpandDims_7*
out_type0*
_output_shapes
:*
T0
Л
Adnn/input_from_feature_columns/input_layer/I9/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I9/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Cdnn/input_from_feature_columns/input_layer/I9/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;dnn/input_from_feature_columns/input_layer/I9/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/I9/ShapeAdnn/input_from_feature_columns/input_layer/I9/strided_slice/stackCdnn/input_from_feature_columns/input_layer/I9/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/I9/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 

=dnn/input_from_feature_columns/input_layer/I9/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
щ
;dnn/input_from_feature_columns/input_layer/I9/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/I9/strided_slice=dnn/input_from_feature_columns/input_layer/I9/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
Ћ
5dnn/input_from_feature_columns/input_layer/I9/ReshapeReshapeExpandDims_7;dnn/input_from_feature_columns/input_layer/I9/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
Л
1dnn/input_from_feature_columns/input_layer/concatConcatV25dnn/input_from_feature_columns/input_layer/I1/Reshape6dnn/input_from_feature_columns/input_layer/I10/Reshape6dnn/input_from_feature_columns/input_layer/I11/Reshape6dnn/input_from_feature_columns/input_layer/I12/Reshape6dnn/input_from_feature_columns/input_layer/I13/Reshape5dnn/input_from_feature_columns/input_layer/I2/Reshape5dnn/input_from_feature_columns/input_layer/I3/Reshape5dnn/input_from_feature_columns/input_layer/I4/Reshape5dnn/input_from_feature_columns/input_layer/I5/Reshape5dnn/input_from_feature_columns/input_layer/I6/Reshape5dnn/input_from_feature_columns/input_layer/I7/Reshape5dnn/input_from_feature_columns/input_layer/I8/Reshape5dnn/input_from_feature_columns/input_layer/I9/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
«
Adnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"   d   *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes
:
є
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *zхkЊ*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes
: 
є
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *zхk>*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes
: 
°
Idnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*

seed *
T0*
seed2 *
dtype0*
_output_shapes

:d
Ю
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
_output_shapes
: *
T0
∞
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
_output_shapes

:d*
T0
Ґ
;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
_output_shapes

:d*
T0
…
 dnn/hiddenlayer_0/weights/part_0
VariableV2*
shared_name *
_output_shapes

:d*
	container *
shape
:d*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
Ч
'dnn/hiddenlayer_0/weights/part_0/AssignAssign dnn/hiddenlayer_0/weights/part_0;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
use_locking(*
_output_shapes

:d*
T0*
validate_shape(
±
%dnn/hiddenlayer_0/weights/part_0/readIdentity dnn/hiddenlayer_0/weights/part_0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
_output_shapes

:d*
T0
≤
1dnn/hiddenlayer_0/biases/part_0/Initializer/zerosConst*
valueBd*    *2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
dtype0*
_output_shapes
:d
њ
dnn/hiddenlayer_0/biases/part_0
VariableV2*
shared_name *
_output_shapes
:d*
	container *
shape:d*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
Ж
&dnn/hiddenlayer_0/biases/part_0/AssignAssigndnn/hiddenlayer_0/biases/part_01dnn/hiddenlayer_0/biases/part_0/Initializer/zeros*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
use_locking(*
_output_shapes
:d*
T0*
validate_shape(
™
$dnn/hiddenlayer_0/biases/part_0/readIdentitydnn/hiddenlayer_0/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
_output_shapes
:d*
T0
u
dnn/hiddenlayer_0/weightsIdentity%dnn/hiddenlayer_0/weights/part_0/read*
_output_shapes

:d*
T0
»
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:€€€€€€€€€d*
T0
o
dnn/hiddenlayer_0/biasesIdentity$dnn/hiddenlayer_0/biases/part_0/read*
_output_shapes
:d*
T0
°
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/biases*
T0*'
_output_shapes
:€€€€€€€€€d*
data_formatNHWC
y
$dnn/hiddenlayer_0/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*'
_output_shapes
:€€€€€€€€€d*
T0
[
dnn/zero_fraction/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
Р
dnn/zero_fraction/EqualEqual$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/zero_fraction/zero*'
_output_shapes
:€€€€€€€€€d*
T0
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€d
h
dnn/zero_fraction/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
Н
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
†
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
_output_shapes
: *
dtype0
Ђ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
_output_shapes
: *
T0
Е
$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
_output_shapes
: *
dtype0
°
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tag$dnn/hiddenlayer_0/hiddenlayer_0/Relu*
_output_shapes
: *
T0
«
Adnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"d   F   *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes
:
є
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *H`@Њ*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes
: 
є
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *H`@>*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes
: 
°
Idnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*

seed *
T0*
seed2 *
dtype0*
_output_shapes

:dF
Ю
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
_output_shapes
: *
T0
∞
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
_output_shapes

:dF*
T0
Ґ
;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
_output_shapes

:dF*
T0
…
 dnn/hiddenlayer_1/weights/part_0
VariableV2*
shared_name *
_output_shapes

:dF*
	container *
shape
:dF*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
Ч
'dnn/hiddenlayer_1/weights/part_0/AssignAssign dnn/hiddenlayer_1/weights/part_0;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
use_locking(*
_output_shapes

:dF*
T0*
validate_shape(
±
%dnn/hiddenlayer_1/weights/part_0/readIdentity dnn/hiddenlayer_1/weights/part_0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
_output_shapes

:dF*
T0
≤
1dnn/hiddenlayer_1/biases/part_0/Initializer/zerosConst*
valueBF*    *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
dtype0*
_output_shapes
:F
њ
dnn/hiddenlayer_1/biases/part_0
VariableV2*
shared_name *
_output_shapes
:F*
	container *
shape:F*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
Ж
&dnn/hiddenlayer_1/biases/part_0/AssignAssigndnn/hiddenlayer_1/biases/part_01dnn/hiddenlayer_1/biases/part_0/Initializer/zeros*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
use_locking(*
_output_shapes
:F*
T0*
validate_shape(
™
$dnn/hiddenlayer_1/biases/part_0/readIdentitydnn/hiddenlayer_1/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
_output_shapes
:F*
T0
u
dnn/hiddenlayer_1/weightsIdentity%dnn/hiddenlayer_1/weights/part_0/read*
_output_shapes

:dF*
T0
ї
dnn/hiddenlayer_1/MatMulMatMul$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/hiddenlayer_1/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:€€€€€€€€€F*
T0
o
dnn/hiddenlayer_1/biasesIdentity$dnn/hiddenlayer_1/biases/part_0/read*
_output_shapes
:F*
T0
°
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/biases*
T0*'
_output_shapes
:€€€€€€€€€F*
data_formatNHWC
y
$dnn/hiddenlayer_1/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*'
_output_shapes
:€€€€€€€€€F*
T0
]
dnn/zero_fraction_1/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ф
dnn/zero_fraction_1/EqualEqual$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/zero_fraction_1/zero*'
_output_shapes
:€€€€€€€€€F*
T0
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€F
j
dnn/zero_fraction_1/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
У
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
†
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
_output_shapes
: *
dtype0
≠
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
_output_shapes
: *
T0
Е
$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
_output_shapes
: *
dtype0
°
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tag$dnn/hiddenlayer_1/hiddenlayer_1/Relu*
_output_shapes
: *
T0
«
Adnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"F   2   *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
dtype0*
_output_shapes
:
є
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *.щdЊ*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
dtype0*
_output_shapes
: 
є
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *.щd>*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
dtype0*
_output_shapes
: 
°
Idnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shape*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*

seed *
T0*
seed2 *
dtype0*
_output_shapes

:F2
Ю
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
_output_shapes
: *
T0
∞
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
_output_shapes

:F2*
T0
Ґ
;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
_output_shapes

:F2*
T0
…
 dnn/hiddenlayer_2/weights/part_0
VariableV2*
shared_name *
_output_shapes

:F2*
	container *
shape
:F2*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
Ч
'dnn/hiddenlayer_2/weights/part_0/AssignAssign dnn/hiddenlayer_2/weights/part_0;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
use_locking(*
_output_shapes

:F2*
T0*
validate_shape(
±
%dnn/hiddenlayer_2/weights/part_0/readIdentity dnn/hiddenlayer_2/weights/part_0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
_output_shapes

:F2*
T0
≤
1dnn/hiddenlayer_2/biases/part_0/Initializer/zerosConst*
valueB2*    *2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
dtype0*
_output_shapes
:2
њ
dnn/hiddenlayer_2/biases/part_0
VariableV2*
shared_name *
_output_shapes
:2*
	container *
shape:2*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
Ж
&dnn/hiddenlayer_2/biases/part_0/AssignAssigndnn/hiddenlayer_2/biases/part_01dnn/hiddenlayer_2/biases/part_0/Initializer/zeros*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
use_locking(*
_output_shapes
:2*
T0*
validate_shape(
™
$dnn/hiddenlayer_2/biases/part_0/readIdentitydnn/hiddenlayer_2/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
_output_shapes
:2*
T0
u
dnn/hiddenlayer_2/weightsIdentity%dnn/hiddenlayer_2/weights/part_0/read*
_output_shapes

:F2*
T0
ї
dnn/hiddenlayer_2/MatMulMatMul$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/hiddenlayer_2/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:€€€€€€€€€2*
T0
o
dnn/hiddenlayer_2/biasesIdentity$dnn/hiddenlayer_2/biases/part_0/read*
_output_shapes
:2*
T0
°
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/biases*
T0*'
_output_shapes
:€€€€€€€€€2*
data_formatNHWC
y
$dnn/hiddenlayer_2/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*'
_output_shapes
:€€€€€€€€€2*
T0
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ф
dnn/zero_fraction_2/EqualEqual$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/zero_fraction_2/zero*'
_output_shapes
:€€€€€€€€€2*
T0
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€2
j
dnn/zero_fraction_2/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
У
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
†
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
_output_shapes
: *
dtype0
≠
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
_output_shapes
: *
T0
Е
$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
_output_shapes
: *
dtype0
°
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tag$dnn/hiddenlayer_2/hiddenlayer_2/Relu*
_output_shapes
: *
T0
«
Adnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"2      *3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
dtype0*
_output_shapes
:
є
?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *√–РЊ*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
dtype0*
_output_shapes
: 
є
?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *√–Р>*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
dtype0*
_output_shapes
: 
°
Idnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/shape*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*

seed *
T0*
seed2 *
dtype0*
_output_shapes

:2
Ю
?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
_output_shapes
: *
T0
∞
?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
_output_shapes

:2*
T0
Ґ
;dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
_output_shapes

:2*
T0
…
 dnn/hiddenlayer_3/weights/part_0
VariableV2*
shared_name *
_output_shapes

:2*
	container *
shape
:2*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0
Ч
'dnn/hiddenlayer_3/weights/part_0/AssignAssign dnn/hiddenlayer_3/weights/part_0;dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
use_locking(*
_output_shapes

:2*
T0*
validate_shape(
±
%dnn/hiddenlayer_3/weights/part_0/readIdentity dnn/hiddenlayer_3/weights/part_0*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
_output_shapes

:2*
T0
≤
1dnn/hiddenlayer_3/biases/part_0/Initializer/zerosConst*
valueB*    *2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
dtype0*
_output_shapes
:
њ
dnn/hiddenlayer_3/biases/part_0
VariableV2*
shared_name *
_output_shapes
:*
	container *
shape:*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0
Ж
&dnn/hiddenlayer_3/biases/part_0/AssignAssigndnn/hiddenlayer_3/biases/part_01dnn/hiddenlayer_3/biases/part_0/Initializer/zeros*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
™
$dnn/hiddenlayer_3/biases/part_0/readIdentitydnn/hiddenlayer_3/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
_output_shapes
:*
T0
u
dnn/hiddenlayer_3/weightsIdentity%dnn/hiddenlayer_3/weights/part_0/read*
_output_shapes

:2*
T0
ї
dnn/hiddenlayer_3/MatMulMatMul$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/hiddenlayer_3/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:€€€€€€€€€*
T0
o
dnn/hiddenlayer_3/biasesIdentity$dnn/hiddenlayer_3/biases/part_0/read*
_output_shapes
:*
T0
°
dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/biases*
T0*'
_output_shapes
:€€€€€€€€€*
data_formatNHWC
y
$dnn/hiddenlayer_3/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
]
dnn/zero_fraction_3/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ф
dnn/zero_fraction_3/EqualEqual$dnn/hiddenlayer_3/hiddenlayer_3/Reludnn/zero_fraction_3/zero*'
_output_shapes
:€€€€€€€€€*
T0
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€
j
dnn/zero_fraction_3/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
У
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
†
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values*
_output_shapes
: *
dtype0
≠
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
_output_shapes
: *
T0
Е
$dnn/dnn/hiddenlayer_3/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_3/activation*
_output_shapes
: *
dtype0
°
 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tag$dnn/hiddenlayer_3/hiddenlayer_3/Relu*
_output_shapes
: *
T0
є
:dnn/logits/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"      *,
_class"
 loc:@dnn/logits/weights/part_0*
dtype0*
_output_shapes
:
Ђ
8dnn/logits/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *ффхЊ*,
_class"
 loc:@dnn/logits/weights/part_0*
dtype0*
_output_shapes
: 
Ђ
8dnn/logits/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *ффх>*,
_class"
 loc:@dnn/logits/weights/part_0*
dtype0*
_output_shapes
: 
М
Bdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn/logits/weights/part_0/Initializer/random_uniform/shape*,
_class"
 loc:@dnn/logits/weights/part_0*

seed *
T0*
seed2 *
dtype0*
_output_shapes

:
В
8dnn/logits/weights/part_0/Initializer/random_uniform/subSub8dnn/logits/weights/part_0/Initializer/random_uniform/max8dnn/logits/weights/part_0/Initializer/random_uniform/min*,
_class"
 loc:@dnn/logits/weights/part_0*
_output_shapes
: *
T0
Ф
8dnn/logits/weights/part_0/Initializer/random_uniform/mulMulBdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn/logits/weights/part_0/Initializer/random_uniform/sub*,
_class"
 loc:@dnn/logits/weights/part_0*
_output_shapes

:*
T0
Ж
4dnn/logits/weights/part_0/Initializer/random_uniformAdd8dnn/logits/weights/part_0/Initializer/random_uniform/mul8dnn/logits/weights/part_0/Initializer/random_uniform/min*,
_class"
 loc:@dnn/logits/weights/part_0*
_output_shapes

:*
T0
ї
dnn/logits/weights/part_0
VariableV2*
shared_name *
_output_shapes

:*
	container *
shape
:*
dtype0*,
_class"
 loc:@dnn/logits/weights/part_0
ы
 dnn/logits/weights/part_0/AssignAssigndnn/logits/weights/part_04dnn/logits/weights/part_0/Initializer/random_uniform*,
_class"
 loc:@dnn/logits/weights/part_0*
use_locking(*
_output_shapes

:*
T0*
validate_shape(
Ь
dnn/logits/weights/part_0/readIdentitydnn/logits/weights/part_0*,
_class"
 loc:@dnn/logits/weights/part_0*
_output_shapes

:*
T0
§
*dnn/logits/biases/part_0/Initializer/zerosConst*
valueB*    *+
_class!
loc:@dnn/logits/biases/part_0*
dtype0*
_output_shapes
:
±
dnn/logits/biases/part_0
VariableV2*
shared_name *
_output_shapes
:*
	container *
shape:*
dtype0*+
_class!
loc:@dnn/logits/biases/part_0
к
dnn/logits/biases/part_0/AssignAssigndnn/logits/biases/part_0*dnn/logits/biases/part_0/Initializer/zeros*+
_class!
loc:@dnn/logits/biases/part_0*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
Х
dnn/logits/biases/part_0/readIdentitydnn/logits/biases/part_0*+
_class!
loc:@dnn/logits/biases/part_0*
_output_shapes
:*
T0
g
dnn/logits/weightsIdentitydnn/logits/weights/part_0/read*
_output_shapes

:*
T0
≠
dnn/logits/MatMulMatMul$dnn/hiddenlayer_3/hiddenlayer_3/Reludnn/logits/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:€€€€€€€€€*
T0
a
dnn/logits/biasesIdentitydnn/logits/biases/part_0/read*
_output_shapes
:*
T0
М
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/biases*
T0*'
_output_shapes
:€€€€€€€€€*
data_formatNHWC
]
dnn/zero_fraction_4/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
В
dnn/zero_fraction_4/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_4/zero*'
_output_shapes
:€€€€€€€€€*
T0
|
dnn/zero_fraction_4/CastCastdnn/zero_fraction_4/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€
j
dnn/zero_fraction_4/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
У
dnn/zero_fraction_4/MeanMeandnn/zero_fraction_4/Castdnn/zero_fraction_4/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
Т
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
_output_shapes
: *
dtype0
Я
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/Mean*
_output_shapes
: *
T0
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
_output_shapes
: *
dtype0
Б
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: *
T0
y
,linear/linear_model/C1/to_sparse_input/ShapeShapeExpandDims_10*
out_type0*
_output_shapes
:*
T0
Х
+linear/linear_model/C1/to_sparse_input/CastCast,linear/linear_model/C1/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
p
/linear/linear_model/C1/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
≠
/linear/linear_model/C1/to_sparse_input/NotEqualNotEqualExpandDims_10/linear/linear_model/C1/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
П
,linear/linear_model/C1/to_sparse_input/WhereWhere/linear/linear_model/C1/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
З
4linear/linear_model/C1/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ї
.linear/linear_model/C1/to_sparse_input/ReshapeReshapeExpandDims_104linear/linear_model/C1/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Л
:linear/linear_model/C1/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C1/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C1/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
…
4linear/linear_model/C1/to_sparse_input/strided_sliceStridedSlice,linear/linear_model/C1/to_sparse_input/Where:linear/linear_model/C1/to_sparse_input/strided_slice/stack<linear/linear_model/C1/to_sparse_input/strided_slice/stack_1<linear/linear_model/C1/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Н
<linear/linear_model/C1/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
П
>linear/linear_model/C1/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
П
>linear/linear_model/C1/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
6linear/linear_model/C1/to_sparse_input/strided_slice_1StridedSlice,linear/linear_model/C1/to_sparse_input/Where<linear/linear_model/C1/to_sparse_input/strided_slice_1/stack>linear/linear_model/C1/to_sparse_input/strided_slice_1/stack_1>linear/linear_model/C1/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
Я
.linear/linear_model/C1/to_sparse_input/unstackUnpack+linear/linear_model/C1/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
†
,linear/linear_model/C1/to_sparse_input/stackPack0linear/linear_model/C1/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
…
*linear/linear_model/C1/to_sparse_input/MulMul6linear/linear_model/C1/to_sparse_input/strided_slice_1,linear/linear_model/C1/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Ж
<linear/linear_model/C1/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ж
*linear/linear_model/C1/to_sparse_input/SumSum*linear/linear_model/C1/to_sparse_input/Mul<linear/linear_model/C1/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
Ѕ
*linear/linear_model/C1/to_sparse_input/AddAdd4linear/linear_model/C1/to_sparse_input/strided_slice*linear/linear_model/C1/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
п
-linear/linear_model/C1/to_sparse_input/GatherGather.linear/linear_model/C1/to_sparse_input/Reshape*linear/linear_model/C1/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Я
linear/linear_model/C1/lookupStringToHashBucketFast-linear/linear_model/C1/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
К
!linear/linear_model/C1/Shape/CastCast+linear/linear_model/C1/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
t
*linear/linear_model/C1/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
v
,linear/linear_model/C1/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
v
,linear/linear_model/C1/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
$linear/linear_model/C1/strided_sliceStridedSlice!linear/linear_model/C1/Shape/Cast*linear/linear_model/C1/strided_slice/stack,linear/linear_model/C1/strided_slice/stack_1,linear/linear_model/C1/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
j
linear/linear_model/C1/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
¶
linear/linear_model/C1/Cast/xPack$linear/linear_model/C1/strided_slicelinear/linear_model/C1/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
v
linear/linear_model/C1/CastCastlinear/linear_model/C1/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
№
$linear/linear_model/C1/SparseReshapeSparseReshape,linear/linear_model/C1/to_sparse_input/Where+linear/linear_model/C1/to_sparse_input/Castlinear/linear_model/C1/Cast*-
_output_shapes
:€€€€€€€€€:
Ж
-linear/linear_model/C1/SparseReshape/IdentityIdentitylinear/linear_model/C1/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
»
7linear/linear_model/C1/weights/part_0/Initializer/zerosConst*
valueB	и*    *8
_class.
,*loc:@linear/linear_model/C1/weights/part_0*
dtype0*
_output_shapes
:	и
’
%linear/linear_model/C1/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*8
_class.
,*loc:@linear/linear_model/C1/weights/part_0
£
,linear/linear_model/C1/weights/part_0/AssignAssign%linear/linear_model/C1/weights/part_07linear/linear_model/C1/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/C1/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ѕ
*linear/linear_model/C1/weights/part_0/readIdentity%linear/linear_model/C1/weights/part_0*8
_class.
,*loc:@linear/linear_model/C1/weights/part_0*
_output_shapes
:	и*
T0
y
/linear/linear_model/C1/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
x
.linear/linear_model/C1/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
н
)linear/linear_model/C1/weighted_sum/SliceSlice&linear/linear_model/C1/SparseReshape:1/linear/linear_model/C1/weighted_sum/Slice/begin.linear/linear_model/C1/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
s
)linear/linear_model/C1/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ƒ
(linear/linear_model/C1/weighted_sum/ProdProd)linear/linear_model/C1/weighted_sum/Slice)linear/linear_model/C1/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
t
2linear/linear_model/C1/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
я
*linear/linear_model/C1/weighted_sum/GatherGather&linear/linear_model/C1/SparseReshape:12linear/linear_model/C1/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
¬
*linear/linear_model/C1/weighted_sum/Cast/xPack(linear/linear_model/C1/weighted_sum/Prod*linear/linear_model/C1/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
л
1linear/linear_model/C1/weighted_sum/SparseReshapeSparseReshape$linear/linear_model/C1/SparseReshape&linear/linear_model/C1/SparseReshape:1*linear/linear_model/C1/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
£
:linear/linear_model/C1/weighted_sum/SparseReshape/IdentityIdentity-linear/linear_model/C1/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
t
2linear/linear_model/C1/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ё
0linear/linear_model/C1/weighted_sum/GreaterEqualGreaterEqual:linear/linear_model/C1/weighted_sum/SparseReshape/Identity2linear/linear_model/C1/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Н
)linear/linear_model/C1/weighted_sum/WhereWhere0linear/linear_model/C1/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/C1/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
–
+linear/linear_model/C1/weighted_sum/ReshapeReshape)linear/linear_model/C1/weighted_sum/Where1linear/linear_model/C1/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
ц
,linear/linear_model/C1/weighted_sum/Gather_1Gather1linear/linear_model/C1/weighted_sum/SparseReshape+linear/linear_model/C1/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ы
,linear/linear_model/C1/weighted_sum/Gather_2Gather:linear/linear_model/C1/weighted_sum/SparseReshape/Identity+linear/linear_model/C1/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Т
,linear/linear_model/C1/weighted_sum/IdentityIdentity3linear/linear_model/C1/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear_model/C1/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
К
Klinear/linear_model/C1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear_model/C1/weighted_sum/Gather_1,linear/linear_model/C1/weighted_sum/Gather_2,linear/linear_model/C1/weighted_sum/Identity=linear/linear_model/C1/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
†
Olinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Љ
Ilinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear_model/C1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/strided_slice/stackQlinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
–
@linear/linear_model/C1/weighted_sum/embedding_lookup_sparse/CastCastIlinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
з
Blinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/UniqueUniqueMlinear/linear_model/C1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
а
Llinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/embedding_lookupGather*linear/linear_model/C1/weights/part_0/readBlinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*8
_class.
,*loc:@linear/linear_model/C1/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
г
;linear/linear_model/C1/weighted_sum/embedding_lookup_sparseSparseSegmentSumLlinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/embedding_lookupDlinear/linear_model/C1/weighted_sum/embedding_lookup_sparse/Unique:1@linear/linear_model/C1/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Д
3linear/linear_model/C1/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
ь
-linear/linear_model/C1/weighted_sum/Reshape_1ReshapeMlinear/linear_model/C1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear_model/C1/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

§
)linear/linear_model/C1/weighted_sum/ShapeShape;linear/linear_model/C1/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Б
7linear/linear_model/C1/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C1/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C1/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
1linear/linear_model/C1/weighted_sum/strided_sliceStridedSlice)linear/linear_model/C1/weighted_sum/Shape7linear/linear_model/C1/weighted_sum/strided_slice/stack9linear/linear_model/C1/weighted_sum/strided_slice/stack_19linear/linear_model/C1/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
m
+linear/linear_model/C1/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ћ
)linear/linear_model/C1/weighted_sum/stackPack+linear/linear_model/C1/weighted_sum/stack/01linear/linear_model/C1/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
„
(linear/linear_model/C1/weighted_sum/TileTile-linear/linear_model/C1/weighted_sum/Reshape_1)linear/linear_model/C1/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

™
.linear/linear_model/C1/weighted_sum/zeros_like	ZerosLike;linear/linear_model/C1/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ц
#linear/linear_model/C1/weighted_sumSelect(linear/linear_model/C1/weighted_sum/Tile.linear/linear_model/C1/weighted_sum/zeros_like;linear/linear_model/C1/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
О
*linear/linear_model/C1/weighted_sum/Cast_1Cast&linear/linear_model/C1/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
{
1linear/linear_model/C1/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
z
0linear/linear_model/C1/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
+linear/linear_model/C1/weighted_sum/Slice_1Slice*linear/linear_model/C1/weighted_sum/Cast_11linear/linear_model/C1/weighted_sum/Slice_1/begin0linear/linear_model/C1/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
О
+linear/linear_model/C1/weighted_sum/Shape_1Shape#linear/linear_model/C1/weighted_sum*
out_type0*
_output_shapes
:*
T0
{
1linear/linear_model/C1/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Г
0linear/linear_model/C1/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ш
+linear/linear_model/C1/weighted_sum/Slice_2Slice+linear/linear_model/C1/weighted_sum/Shape_11linear/linear_model/C1/weighted_sum/Slice_2/begin0linear/linear_model/C1/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
q
/linear/linear_model/C1/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ы
*linear/linear_model/C1/weighted_sum/concatConcatV2+linear/linear_model/C1/weighted_sum/Slice_1+linear/linear_model/C1/weighted_sum/Slice_2/linear/linear_model/C1/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
…
-linear/linear_model/C1/weighted_sum/Reshape_2Reshape#linear/linear_model/C1/weighted_sum*linear/linear_model/C1/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C10/to_sparse_input/ShapeShapeExpandDims_14*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C10/to_sparse_input/CastCast-linear/linear_model/C10/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C10/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C10/to_sparse_input/NotEqualNotEqualExpandDims_140linear/linear_model/C10/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C10/to_sparse_input/WhereWhere0linear/linear_model/C10/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C10/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C10/to_sparse_input/ReshapeReshapeExpandDims_145linear/linear_model/C10/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C10/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C10/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C10/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C10/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C10/to_sparse_input/Where;linear/linear_model/C10/to_sparse_input/strided_slice/stack=linear/linear_model/C10/to_sparse_input/strided_slice/stack_1=linear/linear_model/C10/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C10/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C10/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C10/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C10/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C10/to_sparse_input/Where=linear/linear_model/C10/to_sparse_input/strided_slice_1/stack?linear/linear_model/C10/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C10/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C10/to_sparse_input/unstackUnpack,linear/linear_model/C10/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C10/to_sparse_input/stackPack1linear/linear_model/C10/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C10/to_sparse_input/MulMul7linear/linear_model/C10/to_sparse_input/strided_slice_1-linear/linear_model/C10/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C10/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C10/to_sparse_input/SumSum+linear/linear_model/C10/to_sparse_input/Mul=linear/linear_model/C10/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C10/to_sparse_input/AddAdd5linear/linear_model/C10/to_sparse_input/strided_slice+linear/linear_model/C10/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C10/to_sparse_input/GatherGather/linear/linear_model/C10/to_sparse_input/Reshape+linear/linear_model/C10/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C10/lookupStringToHashBucketFast.linear/linear_model/C10/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C10/Shape/CastCast,linear/linear_model/C10/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C10/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C10/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C10/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C10/strided_sliceStridedSlice"linear/linear_model/C10/Shape/Cast+linear/linear_model/C10/strided_slice/stack-linear/linear_model/C10/strided_slice/stack_1-linear/linear_model/C10/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C10/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C10/Cast/xPack%linear/linear_model/C10/strided_slice linear/linear_model/C10/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C10/CastCastlinear/linear_model/C10/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C10/SparseReshapeSparseReshape-linear/linear_model/C10/to_sparse_input/Where,linear/linear_model/C10/to_sparse_input/Castlinear/linear_model/C10/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C10/SparseReshape/IdentityIdentitylinear/linear_model/C10/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C10/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C10/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C10/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C10/weights/part_0
І
-linear/linear_model/C10/weights/part_0/AssignAssign&linear/linear_model/C10/weights/part_08linear/linear_model/C10/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C10/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C10/weights/part_0/readIdentity&linear/linear_model/C10/weights/part_0*9
_class/
-+loc:@linear/linear_model/C10/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C10/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C10/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C10/weighted_sum/SliceSlice'linear/linear_model/C10/SparseReshape:10linear/linear_model/C10/weighted_sum/Slice/begin/linear/linear_model/C10/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C10/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C10/weighted_sum/ProdProd*linear/linear_model/C10/weighted_sum/Slice*linear/linear_model/C10/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C10/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C10/weighted_sum/GatherGather'linear/linear_model/C10/SparseReshape:13linear/linear_model/C10/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C10/weighted_sum/Cast/xPack)linear/linear_model/C10/weighted_sum/Prod+linear/linear_model/C10/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C10/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C10/SparseReshape'linear/linear_model/C10/SparseReshape:1+linear/linear_model/C10/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C10/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C10/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C10/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C10/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C10/weighted_sum/SparseReshape/Identity3linear/linear_model/C10/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C10/weighted_sum/WhereWhere1linear/linear_model/C10/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C10/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C10/weighted_sum/ReshapeReshape*linear/linear_model/C10/weighted_sum/Where2linear/linear_model/C10/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C10/weighted_sum/Gather_1Gather2linear/linear_model/C10/weighted_sum/SparseReshape,linear/linear_model/C10/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C10/weighted_sum/Gather_2Gather;linear/linear_model/C10/weighted_sum/SparseReshape/Identity,linear/linear_model/C10/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C10/weighted_sum/IdentityIdentity4linear/linear_model/C10/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C10/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C10/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C10/weighted_sum/Gather_1-linear/linear_model/C10/weighted_sum/Gather_2-linear/linear_model/C10/weighted_sum/Identity>linear/linear_model/C10/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C10/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C10/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C10/weights/part_0/readClinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C10/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C10/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C10/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C10/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C10/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C10/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C10/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C10/weighted_sum/ShapeShape<linear/linear_model/C10/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C10/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C10/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C10/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C10/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C10/weighted_sum/Shape8linear/linear_model/C10/weighted_sum/strided_slice/stack:linear/linear_model/C10/weighted_sum/strided_slice/stack_1:linear/linear_model/C10/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C10/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C10/weighted_sum/stackPack,linear/linear_model/C10/weighted_sum/stack/02linear/linear_model/C10/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C10/weighted_sum/TileTile.linear/linear_model/C10/weighted_sum/Reshape_1*linear/linear_model/C10/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C10/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C10/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C10/weighted_sumSelect)linear/linear_model/C10/weighted_sum/Tile/linear/linear_model/C10/weighted_sum/zeros_like<linear/linear_model/C10/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C10/weighted_sum/Cast_1Cast'linear/linear_model/C10/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C10/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C10/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C10/weighted_sum/Slice_1Slice+linear/linear_model/C10/weighted_sum/Cast_12linear/linear_model/C10/weighted_sum/Slice_1/begin1linear/linear_model/C10/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C10/weighted_sum/Shape_1Shape$linear/linear_model/C10/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C10/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C10/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C10/weighted_sum/Slice_2Slice,linear/linear_model/C10/weighted_sum/Shape_12linear/linear_model/C10/weighted_sum/Slice_2/begin1linear/linear_model/C10/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C10/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C10/weighted_sum/concatConcatV2,linear/linear_model/C10/weighted_sum/Slice_1,linear/linear_model/C10/weighted_sum/Slice_20linear/linear_model/C10/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C10/weighted_sum/Reshape_2Reshape$linear/linear_model/C10/weighted_sum+linear/linear_model/C10/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Њ
-linear/linear_model/C10_X_C4_X_C5/SparseCrossSparseCrossExpandDims_31ExpandDims_6ExpandDims_14*
sparse_types
 *
N *
hashed_output(*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
internal_type0*
hash_keyюят„м*
out_type0	*
num_bucketsи*
dense_types
2
Щ
,linear/linear_model/C10_X_C4_X_C5/Shape/CastCast/linear/linear_model/C10_X_C4_X_C5/SparseCross:2*

SrcT0	*

DstT0*
_output_shapes
:

5linear/linear_model/C10_X_C4_X_C5/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Б
7linear/linear_model/C10_X_C4_X_C5/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Б
7linear/linear_model/C10_X_C4_X_C5/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
®
/linear/linear_model/C10_X_C4_X_C5/strided_sliceStridedSlice,linear/linear_model/C10_X_C4_X_C5/Shape/Cast5linear/linear_model/C10_X_C4_X_C5/strided_slice/stack7linear/linear_model/C10_X_C4_X_C5/strided_slice/stack_17linear/linear_model/C10_X_C4_X_C5/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
u
*linear/linear_model/C10_X_C4_X_C5/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
«
(linear/linear_model/C10_X_C4_X_C5/Cast/xPack/linear/linear_model/C10_X_C4_X_C5/strided_slice*linear/linear_model/C10_X_C4_X_C5/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
М
&linear/linear_model/C10_X_C4_X_C5/CastCast(linear/linear_model/C10_X_C4_X_C5/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
ч
/linear/linear_model/C10_X_C4_X_C5/SparseReshapeSparseReshape-linear/linear_model/C10_X_C4_X_C5/SparseCross/linear/linear_model/C10_X_C4_X_C5/SparseCross:2&linear/linear_model/C10_X_C4_X_C5/Cast*-
_output_shapes
:€€€€€€€€€:
£
8linear/linear_model/C10_X_C4_X_C5/SparseReshape/IdentityIdentity/linear/linear_model/C10_X_C4_X_C5/SparseCross:1*#
_output_shapes
:€€€€€€€€€*
T0	
ё
Blinear/linear_model/C10_X_C4_X_C5/weights/part_0/Initializer/zerosConst*
valueB	и*    *C
_class9
75loc:@linear/linear_model/C10_X_C4_X_C5/weights/part_0*
dtype0*
_output_shapes
:	и
л
0linear/linear_model/C10_X_C4_X_C5/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*C
_class9
75loc:@linear/linear_model/C10_X_C4_X_C5/weights/part_0
ѕ
7linear/linear_model/C10_X_C4_X_C5/weights/part_0/AssignAssign0linear/linear_model/C10_X_C4_X_C5/weights/part_0Blinear/linear_model/C10_X_C4_X_C5/weights/part_0/Initializer/zeros*C
_class9
75loc:@linear/linear_model/C10_X_C4_X_C5/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
в
5linear/linear_model/C10_X_C4_X_C5/weights/part_0/readIdentity0linear/linear_model/C10_X_C4_X_C5/weights/part_0*C
_class9
75loc:@linear/linear_model/C10_X_C4_X_C5/weights/part_0*
_output_shapes
:	и*
T0
Д
:linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
Г
9linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Щ
4linear/linear_model/C10_X_C4_X_C5/weighted_sum/SliceSlice1linear/linear_model/C10_X_C4_X_C5/SparseReshape:1:linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice/begin9linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
~
4linear/linear_model/C10_X_C4_X_C5/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
е
3linear/linear_model/C10_X_C4_X_C5/weighted_sum/ProdProd4linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice4linear/linear_model/C10_X_C4_X_C5/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	

=linear/linear_model/C10_X_C4_X_C5/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
А
5linear/linear_model/C10_X_C4_X_C5/weighted_sum/GatherGather1linear/linear_model/C10_X_C4_X_C5/SparseReshape:1=linear/linear_model/C10_X_C4_X_C5/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
г
5linear/linear_model/C10_X_C4_X_C5/weighted_sum/Cast/xPack3linear/linear_model/C10_X_C4_X_C5/weighted_sum/Prod5linear/linear_model/C10_X_C4_X_C5/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
Ч
<linear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseReshapeSparseReshape/linear/linear_model/C10_X_C4_X_C5/SparseReshape1linear/linear_model/C10_X_C4_X_C5/SparseReshape:15linear/linear_model/C10_X_C4_X_C5/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
є
Elinear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseReshape/IdentityIdentity8linear/linear_model/C10_X_C4_X_C5/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	

=linear/linear_model/C10_X_C4_X_C5/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
€
;linear/linear_model/C10_X_C4_X_C5/weighted_sum/GreaterEqualGreaterEqualElinear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseReshape/Identity=linear/linear_model/C10_X_C4_X_C5/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
£
4linear/linear_model/C10_X_C4_X_C5/weighted_sum/WhereWhere;linear/linear_model/C10_X_C4_X_C5/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
П
<linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
с
6linear/linear_model/C10_X_C4_X_C5/weighted_sum/ReshapeReshape4linear/linear_model/C10_X_C4_X_C5/weighted_sum/Where<linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
Ч
7linear/linear_model/C10_X_C4_X_C5/weighted_sum/Gather_1Gather<linear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseReshape6linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
Ь
7linear/linear_model/C10_X_C4_X_C5/weighted_sum/Gather_2GatherElinear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseReshape/Identity6linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
®
7linear/linear_model/C10_X_C4_X_C5/weighted_sum/IdentityIdentity>linear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
К
Hlinear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
Ѕ
Vlinear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows7linear/linear_model/C10_X_C4_X_C5/weighted_sum/Gather_17linear/linear_model/C10_X_C4_X_C5/weighted_sum/Gather_27linear/linear_model/C10_X_C4_X_C5/weighted_sum/IdentityHlinear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
Ђ
Zlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
≠
\linear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
≠
\linear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
у
Tlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceVlinear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsZlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/strided_slice/stack\linear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1\linear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
ж
Klinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/CastCastTlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
э
Mlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/UniqueUniqueXlinear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
М
Wlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/embedding_lookupGather5linear/linear_model/C10_X_C4_X_C5/weights/part_0/readMlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*C
_class9
75loc:@linear/linear_model/C10_X_C4_X_C5/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
П
Flinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparseSparseSegmentSumWlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/embedding_lookupOlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/Unique:1Klinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
П
>linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
Э
8linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape_1ReshapeXlinear/linear_model/C10_X_C4_X_C5/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2>linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

Ї
4linear/linear_model/C10_X_C4_X_C5/weighted_sum/ShapeShapeFlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
М
Blinear/linear_model/C10_X_C4_X_C5/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
О
Dlinear/linear_model/C10_X_C4_X_C5/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
О
Dlinear/linear_model/C10_X_C4_X_C5/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
д
<linear/linear_model/C10_X_C4_X_C5/weighted_sum/strided_sliceStridedSlice4linear/linear_model/C10_X_C4_X_C5/weighted_sum/ShapeBlinear/linear_model/C10_X_C4_X_C5/weighted_sum/strided_slice/stackDlinear/linear_model/C10_X_C4_X_C5/weighted_sum/strided_slice/stack_1Dlinear/linear_model/C10_X_C4_X_C5/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
x
6linear/linear_model/C10_X_C4_X_C5/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
м
4linear/linear_model/C10_X_C4_X_C5/weighted_sum/stackPack6linear/linear_model/C10_X_C4_X_C5/weighted_sum/stack/0<linear/linear_model/C10_X_C4_X_C5/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
ш
3linear/linear_model/C10_X_C4_X_C5/weighted_sum/TileTile8linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape_14linear/linear_model/C10_X_C4_X_C5/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ј
9linear/linear_model/C10_X_C4_X_C5/weighted_sum/zeros_like	ZerosLikeFlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Ґ
.linear/linear_model/C10_X_C4_X_C5/weighted_sumSelect3linear/linear_model/C10_X_C4_X_C5/weighted_sum/Tile9linear/linear_model/C10_X_C4_X_C5/weighted_sum/zeros_likeFlinear/linear_model/C10_X_C4_X_C5/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
§
5linear/linear_model/C10_X_C4_X_C5/weighted_sum/Cast_1Cast1linear/linear_model/C10_X_C4_X_C5/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
Ж
<linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
Е
;linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
£
6linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_1Slice5linear/linear_model/C10_X_C4_X_C5/weighted_sum/Cast_1<linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_1/begin;linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
§
6linear/linear_model/C10_X_C4_X_C5/weighted_sum/Shape_1Shape.linear/linear_model/C10_X_C4_X_C5/weighted_sum*
out_type0*
_output_shapes
:*
T0
Ж
<linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
О
;linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
§
6linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_2Slice6linear/linear_model/C10_X_C4_X_C5/weighted_sum/Shape_1<linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_2/begin;linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
|
:linear/linear_model/C10_X_C4_X_C5/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
І
5linear/linear_model/C10_X_C4_X_C5/weighted_sum/concatConcatV26linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_16linear/linear_model/C10_X_C4_X_C5/weighted_sum/Slice_2:linear/linear_model/C10_X_C4_X_C5/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
к
8linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape_2Reshape.linear/linear_model/C10_X_C4_X_C5/weighted_sum5linear/linear_model/C10_X_C4_X_C5/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C11/to_sparse_input/ShapeShapeExpandDims_17*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C11/to_sparse_input/CastCast-linear/linear_model/C11/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C11/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C11/to_sparse_input/NotEqualNotEqualExpandDims_170linear/linear_model/C11/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C11/to_sparse_input/WhereWhere0linear/linear_model/C11/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C11/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C11/to_sparse_input/ReshapeReshapeExpandDims_175linear/linear_model/C11/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C11/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C11/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C11/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C11/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C11/to_sparse_input/Where;linear/linear_model/C11/to_sparse_input/strided_slice/stack=linear/linear_model/C11/to_sparse_input/strided_slice/stack_1=linear/linear_model/C11/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C11/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C11/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C11/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C11/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C11/to_sparse_input/Where=linear/linear_model/C11/to_sparse_input/strided_slice_1/stack?linear/linear_model/C11/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C11/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C11/to_sparse_input/unstackUnpack,linear/linear_model/C11/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C11/to_sparse_input/stackPack1linear/linear_model/C11/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C11/to_sparse_input/MulMul7linear/linear_model/C11/to_sparse_input/strided_slice_1-linear/linear_model/C11/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C11/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C11/to_sparse_input/SumSum+linear/linear_model/C11/to_sparse_input/Mul=linear/linear_model/C11/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C11/to_sparse_input/AddAdd5linear/linear_model/C11/to_sparse_input/strided_slice+linear/linear_model/C11/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C11/to_sparse_input/GatherGather/linear/linear_model/C11/to_sparse_input/Reshape+linear/linear_model/C11/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C11/lookupStringToHashBucketFast.linear/linear_model/C11/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C11/Shape/CastCast,linear/linear_model/C11/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C11/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C11/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C11/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C11/strided_sliceStridedSlice"linear/linear_model/C11/Shape/Cast+linear/linear_model/C11/strided_slice/stack-linear/linear_model/C11/strided_slice/stack_1-linear/linear_model/C11/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C11/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C11/Cast/xPack%linear/linear_model/C11/strided_slice linear/linear_model/C11/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C11/CastCastlinear/linear_model/C11/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C11/SparseReshapeSparseReshape-linear/linear_model/C11/to_sparse_input/Where,linear/linear_model/C11/to_sparse_input/Castlinear/linear_model/C11/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C11/SparseReshape/IdentityIdentitylinear/linear_model/C11/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C11/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C11/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C11/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C11/weights/part_0
І
-linear/linear_model/C11/weights/part_0/AssignAssign&linear/linear_model/C11/weights/part_08linear/linear_model/C11/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C11/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C11/weights/part_0/readIdentity&linear/linear_model/C11/weights/part_0*9
_class/
-+loc:@linear/linear_model/C11/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C11/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C11/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C11/weighted_sum/SliceSlice'linear/linear_model/C11/SparseReshape:10linear/linear_model/C11/weighted_sum/Slice/begin/linear/linear_model/C11/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C11/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C11/weighted_sum/ProdProd*linear/linear_model/C11/weighted_sum/Slice*linear/linear_model/C11/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C11/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C11/weighted_sum/GatherGather'linear/linear_model/C11/SparseReshape:13linear/linear_model/C11/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C11/weighted_sum/Cast/xPack)linear/linear_model/C11/weighted_sum/Prod+linear/linear_model/C11/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C11/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C11/SparseReshape'linear/linear_model/C11/SparseReshape:1+linear/linear_model/C11/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C11/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C11/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C11/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C11/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C11/weighted_sum/SparseReshape/Identity3linear/linear_model/C11/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C11/weighted_sum/WhereWhere1linear/linear_model/C11/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C11/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C11/weighted_sum/ReshapeReshape*linear/linear_model/C11/weighted_sum/Where2linear/linear_model/C11/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C11/weighted_sum/Gather_1Gather2linear/linear_model/C11/weighted_sum/SparseReshape,linear/linear_model/C11/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C11/weighted_sum/Gather_2Gather;linear/linear_model/C11/weighted_sum/SparseReshape/Identity,linear/linear_model/C11/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C11/weighted_sum/IdentityIdentity4linear/linear_model/C11/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C11/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C11/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C11/weighted_sum/Gather_1-linear/linear_model/C11/weighted_sum/Gather_2-linear/linear_model/C11/weighted_sum/Identity>linear/linear_model/C11/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C11/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C11/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C11/weights/part_0/readClinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C11/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C11/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C11/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C11/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C11/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C11/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C11/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C11/weighted_sum/ShapeShape<linear/linear_model/C11/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C11/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C11/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C11/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C11/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C11/weighted_sum/Shape8linear/linear_model/C11/weighted_sum/strided_slice/stack:linear/linear_model/C11/weighted_sum/strided_slice/stack_1:linear/linear_model/C11/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C11/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C11/weighted_sum/stackPack,linear/linear_model/C11/weighted_sum/stack/02linear/linear_model/C11/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C11/weighted_sum/TileTile.linear/linear_model/C11/weighted_sum/Reshape_1*linear/linear_model/C11/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C11/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C11/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C11/weighted_sumSelect)linear/linear_model/C11/weighted_sum/Tile/linear/linear_model/C11/weighted_sum/zeros_like<linear/linear_model/C11/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C11/weighted_sum/Cast_1Cast'linear/linear_model/C11/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C11/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C11/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C11/weighted_sum/Slice_1Slice+linear/linear_model/C11/weighted_sum/Cast_12linear/linear_model/C11/weighted_sum/Slice_1/begin1linear/linear_model/C11/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C11/weighted_sum/Shape_1Shape$linear/linear_model/C11/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C11/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C11/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C11/weighted_sum/Slice_2Slice,linear/linear_model/C11/weighted_sum/Shape_12linear/linear_model/C11/weighted_sum/Slice_2/begin1linear/linear_model/C11/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C11/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C11/weighted_sum/concatConcatV2,linear/linear_model/C11/weighted_sum/Slice_1,linear/linear_model/C11/weighted_sum/Slice_20linear/linear_model/C11/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C11/weighted_sum/Reshape_2Reshape$linear/linear_model/C11/weighted_sum+linear/linear_model/C11/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
-linear/linear_model/C12/to_sparse_input/ShapeShapeExpandDims_4*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C12/to_sparse_input/CastCast-linear/linear_model/C12/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C12/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
Ѓ
0linear/linear_model/C12/to_sparse_input/NotEqualNotEqualExpandDims_40linear/linear_model/C12/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C12/to_sparse_input/WhereWhere0linear/linear_model/C12/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C12/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ї
/linear/linear_model/C12/to_sparse_input/ReshapeReshapeExpandDims_45linear/linear_model/C12/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C12/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C12/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C12/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C12/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C12/to_sparse_input/Where;linear/linear_model/C12/to_sparse_input/strided_slice/stack=linear/linear_model/C12/to_sparse_input/strided_slice/stack_1=linear/linear_model/C12/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C12/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C12/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C12/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C12/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C12/to_sparse_input/Where=linear/linear_model/C12/to_sparse_input/strided_slice_1/stack?linear/linear_model/C12/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C12/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C12/to_sparse_input/unstackUnpack,linear/linear_model/C12/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C12/to_sparse_input/stackPack1linear/linear_model/C12/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C12/to_sparse_input/MulMul7linear/linear_model/C12/to_sparse_input/strided_slice_1-linear/linear_model/C12/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C12/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C12/to_sparse_input/SumSum+linear/linear_model/C12/to_sparse_input/Mul=linear/linear_model/C12/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C12/to_sparse_input/AddAdd5linear/linear_model/C12/to_sparse_input/strided_slice+linear/linear_model/C12/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C12/to_sparse_input/GatherGather/linear/linear_model/C12/to_sparse_input/Reshape+linear/linear_model/C12/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C12/lookupStringToHashBucketFast.linear/linear_model/C12/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C12/Shape/CastCast,linear/linear_model/C12/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C12/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C12/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C12/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C12/strided_sliceStridedSlice"linear/linear_model/C12/Shape/Cast+linear/linear_model/C12/strided_slice/stack-linear/linear_model/C12/strided_slice/stack_1-linear/linear_model/C12/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C12/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C12/Cast/xPack%linear/linear_model/C12/strided_slice linear/linear_model/C12/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C12/CastCastlinear/linear_model/C12/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C12/SparseReshapeSparseReshape-linear/linear_model/C12/to_sparse_input/Where,linear/linear_model/C12/to_sparse_input/Castlinear/linear_model/C12/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C12/SparseReshape/IdentityIdentitylinear/linear_model/C12/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C12/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C12/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C12/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C12/weights/part_0
І
-linear/linear_model/C12/weights/part_0/AssignAssign&linear/linear_model/C12/weights/part_08linear/linear_model/C12/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C12/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C12/weights/part_0/readIdentity&linear/linear_model/C12/weights/part_0*9
_class/
-+loc:@linear/linear_model/C12/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C12/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C12/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C12/weighted_sum/SliceSlice'linear/linear_model/C12/SparseReshape:10linear/linear_model/C12/weighted_sum/Slice/begin/linear/linear_model/C12/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C12/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C12/weighted_sum/ProdProd*linear/linear_model/C12/weighted_sum/Slice*linear/linear_model/C12/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C12/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C12/weighted_sum/GatherGather'linear/linear_model/C12/SparseReshape:13linear/linear_model/C12/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C12/weighted_sum/Cast/xPack)linear/linear_model/C12/weighted_sum/Prod+linear/linear_model/C12/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C12/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C12/SparseReshape'linear/linear_model/C12/SparseReshape:1+linear/linear_model/C12/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C12/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C12/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C12/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C12/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C12/weighted_sum/SparseReshape/Identity3linear/linear_model/C12/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C12/weighted_sum/WhereWhere1linear/linear_model/C12/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C12/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C12/weighted_sum/ReshapeReshape*linear/linear_model/C12/weighted_sum/Where2linear/linear_model/C12/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C12/weighted_sum/Gather_1Gather2linear/linear_model/C12/weighted_sum/SparseReshape,linear/linear_model/C12/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C12/weighted_sum/Gather_2Gather;linear/linear_model/C12/weighted_sum/SparseReshape/Identity,linear/linear_model/C12/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C12/weighted_sum/IdentityIdentity4linear/linear_model/C12/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C12/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C12/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C12/weighted_sum/Gather_1-linear/linear_model/C12/weighted_sum/Gather_2-linear/linear_model/C12/weighted_sum/Identity>linear/linear_model/C12/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C12/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C12/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C12/weights/part_0/readClinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C12/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C12/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C12/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C12/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C12/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C12/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C12/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C12/weighted_sum/ShapeShape<linear/linear_model/C12/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C12/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C12/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C12/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C12/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C12/weighted_sum/Shape8linear/linear_model/C12/weighted_sum/strided_slice/stack:linear/linear_model/C12/weighted_sum/strided_slice/stack_1:linear/linear_model/C12/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C12/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C12/weighted_sum/stackPack,linear/linear_model/C12/weighted_sum/stack/02linear/linear_model/C12/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C12/weighted_sum/TileTile.linear/linear_model/C12/weighted_sum/Reshape_1*linear/linear_model/C12/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C12/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C12/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C12/weighted_sumSelect)linear/linear_model/C12/weighted_sum/Tile/linear/linear_model/C12/weighted_sum/zeros_like<linear/linear_model/C12/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C12/weighted_sum/Cast_1Cast'linear/linear_model/C12/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C12/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C12/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C12/weighted_sum/Slice_1Slice+linear/linear_model/C12/weighted_sum/Cast_12linear/linear_model/C12/weighted_sum/Slice_1/begin1linear/linear_model/C12/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C12/weighted_sum/Shape_1Shape$linear/linear_model/C12/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C12/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C12/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C12/weighted_sum/Slice_2Slice,linear/linear_model/C12/weighted_sum/Shape_12linear/linear_model/C12/weighted_sum/Slice_2/begin1linear/linear_model/C12/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C12/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C12/weighted_sum/concatConcatV2,linear/linear_model/C12/weighted_sum/Slice_1,linear/linear_model/C12/weighted_sum/Slice_20linear/linear_model/C12/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C12/weighted_sum/Reshape_2Reshape$linear/linear_model/C12/weighted_sum+linear/linear_model/C12/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C13/to_sparse_input/ShapeShapeExpandDims_28*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C13/to_sparse_input/CastCast-linear/linear_model/C13/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C13/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C13/to_sparse_input/NotEqualNotEqualExpandDims_280linear/linear_model/C13/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C13/to_sparse_input/WhereWhere0linear/linear_model/C13/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C13/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C13/to_sparse_input/ReshapeReshapeExpandDims_285linear/linear_model/C13/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C13/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C13/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C13/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C13/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C13/to_sparse_input/Where;linear/linear_model/C13/to_sparse_input/strided_slice/stack=linear/linear_model/C13/to_sparse_input/strided_slice/stack_1=linear/linear_model/C13/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C13/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C13/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C13/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C13/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C13/to_sparse_input/Where=linear/linear_model/C13/to_sparse_input/strided_slice_1/stack?linear/linear_model/C13/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C13/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C13/to_sparse_input/unstackUnpack,linear/linear_model/C13/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C13/to_sparse_input/stackPack1linear/linear_model/C13/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C13/to_sparse_input/MulMul7linear/linear_model/C13/to_sparse_input/strided_slice_1-linear/linear_model/C13/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C13/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C13/to_sparse_input/SumSum+linear/linear_model/C13/to_sparse_input/Mul=linear/linear_model/C13/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C13/to_sparse_input/AddAdd5linear/linear_model/C13/to_sparse_input/strided_slice+linear/linear_model/C13/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C13/to_sparse_input/GatherGather/linear/linear_model/C13/to_sparse_input/Reshape+linear/linear_model/C13/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C13/lookupStringToHashBucketFast.linear/linear_model/C13/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C13/Shape/CastCast,linear/linear_model/C13/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C13/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C13/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C13/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C13/strided_sliceStridedSlice"linear/linear_model/C13/Shape/Cast+linear/linear_model/C13/strided_slice/stack-linear/linear_model/C13/strided_slice/stack_1-linear/linear_model/C13/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C13/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C13/Cast/xPack%linear/linear_model/C13/strided_slice linear/linear_model/C13/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C13/CastCastlinear/linear_model/C13/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C13/SparseReshapeSparseReshape-linear/linear_model/C13/to_sparse_input/Where,linear/linear_model/C13/to_sparse_input/Castlinear/linear_model/C13/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C13/SparseReshape/IdentityIdentitylinear/linear_model/C13/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C13/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C13/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C13/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C13/weights/part_0
І
-linear/linear_model/C13/weights/part_0/AssignAssign&linear/linear_model/C13/weights/part_08linear/linear_model/C13/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C13/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C13/weights/part_0/readIdentity&linear/linear_model/C13/weights/part_0*9
_class/
-+loc:@linear/linear_model/C13/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C13/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C13/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C13/weighted_sum/SliceSlice'linear/linear_model/C13/SparseReshape:10linear/linear_model/C13/weighted_sum/Slice/begin/linear/linear_model/C13/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C13/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C13/weighted_sum/ProdProd*linear/linear_model/C13/weighted_sum/Slice*linear/linear_model/C13/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C13/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C13/weighted_sum/GatherGather'linear/linear_model/C13/SparseReshape:13linear/linear_model/C13/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C13/weighted_sum/Cast/xPack)linear/linear_model/C13/weighted_sum/Prod+linear/linear_model/C13/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C13/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C13/SparseReshape'linear/linear_model/C13/SparseReshape:1+linear/linear_model/C13/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C13/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C13/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C13/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C13/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C13/weighted_sum/SparseReshape/Identity3linear/linear_model/C13/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C13/weighted_sum/WhereWhere1linear/linear_model/C13/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C13/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C13/weighted_sum/ReshapeReshape*linear/linear_model/C13/weighted_sum/Where2linear/linear_model/C13/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C13/weighted_sum/Gather_1Gather2linear/linear_model/C13/weighted_sum/SparseReshape,linear/linear_model/C13/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C13/weighted_sum/Gather_2Gather;linear/linear_model/C13/weighted_sum/SparseReshape/Identity,linear/linear_model/C13/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C13/weighted_sum/IdentityIdentity4linear/linear_model/C13/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C13/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C13/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C13/weighted_sum/Gather_1-linear/linear_model/C13/weighted_sum/Gather_2-linear/linear_model/C13/weighted_sum/Identity>linear/linear_model/C13/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C13/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C13/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C13/weights/part_0/readClinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C13/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C13/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C13/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C13/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C13/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C13/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C13/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C13/weighted_sum/ShapeShape<linear/linear_model/C13/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C13/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C13/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C13/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C13/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C13/weighted_sum/Shape8linear/linear_model/C13/weighted_sum/strided_slice/stack:linear/linear_model/C13/weighted_sum/strided_slice/stack_1:linear/linear_model/C13/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C13/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C13/weighted_sum/stackPack,linear/linear_model/C13/weighted_sum/stack/02linear/linear_model/C13/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C13/weighted_sum/TileTile.linear/linear_model/C13/weighted_sum/Reshape_1*linear/linear_model/C13/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C13/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C13/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C13/weighted_sumSelect)linear/linear_model/C13/weighted_sum/Tile/linear/linear_model/C13/weighted_sum/zeros_like<linear/linear_model/C13/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C13/weighted_sum/Cast_1Cast'linear/linear_model/C13/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C13/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C13/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C13/weighted_sum/Slice_1Slice+linear/linear_model/C13/weighted_sum/Cast_12linear/linear_model/C13/weighted_sum/Slice_1/begin1linear/linear_model/C13/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C13/weighted_sum/Shape_1Shape$linear/linear_model/C13/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C13/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C13/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C13/weighted_sum/Slice_2Slice,linear/linear_model/C13/weighted_sum/Shape_12linear/linear_model/C13/weighted_sum/Slice_2/begin1linear/linear_model/C13/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C13/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C13/weighted_sum/concatConcatV2,linear/linear_model/C13/weighted_sum/Slice_1,linear/linear_model/C13/weighted_sum/Slice_20linear/linear_model/C13/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C13/weighted_sum/Reshape_2Reshape$linear/linear_model/C13/weighted_sum+linear/linear_model/C13/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
-linear/linear_model/C14/to_sparse_input/ShapeShapeExpandDims_2*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C14/to_sparse_input/CastCast-linear/linear_model/C14/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C14/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
Ѓ
0linear/linear_model/C14/to_sparse_input/NotEqualNotEqualExpandDims_20linear/linear_model/C14/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C14/to_sparse_input/WhereWhere0linear/linear_model/C14/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C14/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ї
/linear/linear_model/C14/to_sparse_input/ReshapeReshapeExpandDims_25linear/linear_model/C14/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C14/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C14/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C14/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C14/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C14/to_sparse_input/Where;linear/linear_model/C14/to_sparse_input/strided_slice/stack=linear/linear_model/C14/to_sparse_input/strided_slice/stack_1=linear/linear_model/C14/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C14/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C14/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C14/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C14/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C14/to_sparse_input/Where=linear/linear_model/C14/to_sparse_input/strided_slice_1/stack?linear/linear_model/C14/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C14/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C14/to_sparse_input/unstackUnpack,linear/linear_model/C14/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C14/to_sparse_input/stackPack1linear/linear_model/C14/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C14/to_sparse_input/MulMul7linear/linear_model/C14/to_sparse_input/strided_slice_1-linear/linear_model/C14/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C14/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C14/to_sparse_input/SumSum+linear/linear_model/C14/to_sparse_input/Mul=linear/linear_model/C14/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C14/to_sparse_input/AddAdd5linear/linear_model/C14/to_sparse_input/strided_slice+linear/linear_model/C14/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C14/to_sparse_input/GatherGather/linear/linear_model/C14/to_sparse_input/Reshape+linear/linear_model/C14/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C14/lookupStringToHashBucketFast.linear/linear_model/C14/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C14/Shape/CastCast,linear/linear_model/C14/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C14/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C14/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C14/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C14/strided_sliceStridedSlice"linear/linear_model/C14/Shape/Cast+linear/linear_model/C14/strided_slice/stack-linear/linear_model/C14/strided_slice/stack_1-linear/linear_model/C14/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C14/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C14/Cast/xPack%linear/linear_model/C14/strided_slice linear/linear_model/C14/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C14/CastCastlinear/linear_model/C14/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C14/SparseReshapeSparseReshape-linear/linear_model/C14/to_sparse_input/Where,linear/linear_model/C14/to_sparse_input/Castlinear/linear_model/C14/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C14/SparseReshape/IdentityIdentitylinear/linear_model/C14/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C14/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C14/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C14/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C14/weights/part_0
І
-linear/linear_model/C14/weights/part_0/AssignAssign&linear/linear_model/C14/weights/part_08linear/linear_model/C14/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C14/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C14/weights/part_0/readIdentity&linear/linear_model/C14/weights/part_0*9
_class/
-+loc:@linear/linear_model/C14/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C14/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C14/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C14/weighted_sum/SliceSlice'linear/linear_model/C14/SparseReshape:10linear/linear_model/C14/weighted_sum/Slice/begin/linear/linear_model/C14/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C14/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C14/weighted_sum/ProdProd*linear/linear_model/C14/weighted_sum/Slice*linear/linear_model/C14/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C14/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C14/weighted_sum/GatherGather'linear/linear_model/C14/SparseReshape:13linear/linear_model/C14/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C14/weighted_sum/Cast/xPack)linear/linear_model/C14/weighted_sum/Prod+linear/linear_model/C14/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C14/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C14/SparseReshape'linear/linear_model/C14/SparseReshape:1+linear/linear_model/C14/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C14/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C14/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C14/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C14/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C14/weighted_sum/SparseReshape/Identity3linear/linear_model/C14/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C14/weighted_sum/WhereWhere1linear/linear_model/C14/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C14/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C14/weighted_sum/ReshapeReshape*linear/linear_model/C14/weighted_sum/Where2linear/linear_model/C14/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C14/weighted_sum/Gather_1Gather2linear/linear_model/C14/weighted_sum/SparseReshape,linear/linear_model/C14/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C14/weighted_sum/Gather_2Gather;linear/linear_model/C14/weighted_sum/SparseReshape/Identity,linear/linear_model/C14/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C14/weighted_sum/IdentityIdentity4linear/linear_model/C14/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C14/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C14/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C14/weighted_sum/Gather_1-linear/linear_model/C14/weighted_sum/Gather_2-linear/linear_model/C14/weighted_sum/Identity>linear/linear_model/C14/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C14/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C14/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C14/weights/part_0/readClinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C14/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C14/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C14/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C14/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C14/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C14/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C14/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C14/weighted_sum/ShapeShape<linear/linear_model/C14/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C14/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C14/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C14/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C14/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C14/weighted_sum/Shape8linear/linear_model/C14/weighted_sum/strided_slice/stack:linear/linear_model/C14/weighted_sum/strided_slice/stack_1:linear/linear_model/C14/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C14/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C14/weighted_sum/stackPack,linear/linear_model/C14/weighted_sum/stack/02linear/linear_model/C14/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C14/weighted_sum/TileTile.linear/linear_model/C14/weighted_sum/Reshape_1*linear/linear_model/C14/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C14/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C14/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C14/weighted_sumSelect)linear/linear_model/C14/weighted_sum/Tile/linear/linear_model/C14/weighted_sum/zeros_like<linear/linear_model/C14/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C14/weighted_sum/Cast_1Cast'linear/linear_model/C14/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C14/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C14/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C14/weighted_sum/Slice_1Slice+linear/linear_model/C14/weighted_sum/Cast_12linear/linear_model/C14/weighted_sum/Slice_1/begin1linear/linear_model/C14/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C14/weighted_sum/Shape_1Shape$linear/linear_model/C14/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C14/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C14/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C14/weighted_sum/Slice_2Slice,linear/linear_model/C14/weighted_sum/Shape_12linear/linear_model/C14/weighted_sum/Slice_2/begin1linear/linear_model/C14/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C14/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C14/weighted_sum/concatConcatV2,linear/linear_model/C14/weighted_sum/Slice_1,linear/linear_model/C14/weighted_sum/Slice_20linear/linear_model/C14/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C14/weighted_sum/Reshape_2Reshape$linear/linear_model/C14/weighted_sum+linear/linear_model/C14/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C15/to_sparse_input/ShapeShapeExpandDims_36*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C15/to_sparse_input/CastCast-linear/linear_model/C15/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C15/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C15/to_sparse_input/NotEqualNotEqualExpandDims_360linear/linear_model/C15/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C15/to_sparse_input/WhereWhere0linear/linear_model/C15/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C15/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C15/to_sparse_input/ReshapeReshapeExpandDims_365linear/linear_model/C15/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C15/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C15/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C15/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C15/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C15/to_sparse_input/Where;linear/linear_model/C15/to_sparse_input/strided_slice/stack=linear/linear_model/C15/to_sparse_input/strided_slice/stack_1=linear/linear_model/C15/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C15/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C15/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C15/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C15/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C15/to_sparse_input/Where=linear/linear_model/C15/to_sparse_input/strided_slice_1/stack?linear/linear_model/C15/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C15/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C15/to_sparse_input/unstackUnpack,linear/linear_model/C15/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C15/to_sparse_input/stackPack1linear/linear_model/C15/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C15/to_sparse_input/MulMul7linear/linear_model/C15/to_sparse_input/strided_slice_1-linear/linear_model/C15/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C15/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C15/to_sparse_input/SumSum+linear/linear_model/C15/to_sparse_input/Mul=linear/linear_model/C15/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C15/to_sparse_input/AddAdd5linear/linear_model/C15/to_sparse_input/strided_slice+linear/linear_model/C15/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C15/to_sparse_input/GatherGather/linear/linear_model/C15/to_sparse_input/Reshape+linear/linear_model/C15/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C15/lookupStringToHashBucketFast.linear/linear_model/C15/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C15/Shape/CastCast,linear/linear_model/C15/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C15/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C15/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C15/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C15/strided_sliceStridedSlice"linear/linear_model/C15/Shape/Cast+linear/linear_model/C15/strided_slice/stack-linear/linear_model/C15/strided_slice/stack_1-linear/linear_model/C15/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C15/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C15/Cast/xPack%linear/linear_model/C15/strided_slice linear/linear_model/C15/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C15/CastCastlinear/linear_model/C15/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C15/SparseReshapeSparseReshape-linear/linear_model/C15/to_sparse_input/Where,linear/linear_model/C15/to_sparse_input/Castlinear/linear_model/C15/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C15/SparseReshape/IdentityIdentitylinear/linear_model/C15/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C15/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C15/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C15/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C15/weights/part_0
І
-linear/linear_model/C15/weights/part_0/AssignAssign&linear/linear_model/C15/weights/part_08linear/linear_model/C15/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C15/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C15/weights/part_0/readIdentity&linear/linear_model/C15/weights/part_0*9
_class/
-+loc:@linear/linear_model/C15/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C15/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C15/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C15/weighted_sum/SliceSlice'linear/linear_model/C15/SparseReshape:10linear/linear_model/C15/weighted_sum/Slice/begin/linear/linear_model/C15/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C15/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C15/weighted_sum/ProdProd*linear/linear_model/C15/weighted_sum/Slice*linear/linear_model/C15/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C15/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C15/weighted_sum/GatherGather'linear/linear_model/C15/SparseReshape:13linear/linear_model/C15/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C15/weighted_sum/Cast/xPack)linear/linear_model/C15/weighted_sum/Prod+linear/linear_model/C15/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C15/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C15/SparseReshape'linear/linear_model/C15/SparseReshape:1+linear/linear_model/C15/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C15/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C15/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C15/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C15/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C15/weighted_sum/SparseReshape/Identity3linear/linear_model/C15/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C15/weighted_sum/WhereWhere1linear/linear_model/C15/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C15/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C15/weighted_sum/ReshapeReshape*linear/linear_model/C15/weighted_sum/Where2linear/linear_model/C15/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C15/weighted_sum/Gather_1Gather2linear/linear_model/C15/weighted_sum/SparseReshape,linear/linear_model/C15/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C15/weighted_sum/Gather_2Gather;linear/linear_model/C15/weighted_sum/SparseReshape/Identity,linear/linear_model/C15/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C15/weighted_sum/IdentityIdentity4linear/linear_model/C15/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C15/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C15/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C15/weighted_sum/Gather_1-linear/linear_model/C15/weighted_sum/Gather_2-linear/linear_model/C15/weighted_sum/Identity>linear/linear_model/C15/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C15/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C15/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C15/weights/part_0/readClinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C15/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C15/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C15/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C15/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C15/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C15/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C15/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C15/weighted_sum/ShapeShape<linear/linear_model/C15/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C15/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C15/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C15/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C15/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C15/weighted_sum/Shape8linear/linear_model/C15/weighted_sum/strided_slice/stack:linear/linear_model/C15/weighted_sum/strided_slice/stack_1:linear/linear_model/C15/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C15/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C15/weighted_sum/stackPack,linear/linear_model/C15/weighted_sum/stack/02linear/linear_model/C15/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C15/weighted_sum/TileTile.linear/linear_model/C15/weighted_sum/Reshape_1*linear/linear_model/C15/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C15/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C15/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C15/weighted_sumSelect)linear/linear_model/C15/weighted_sum/Tile/linear/linear_model/C15/weighted_sum/zeros_like<linear/linear_model/C15/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C15/weighted_sum/Cast_1Cast'linear/linear_model/C15/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C15/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C15/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C15/weighted_sum/Slice_1Slice+linear/linear_model/C15/weighted_sum/Cast_12linear/linear_model/C15/weighted_sum/Slice_1/begin1linear/linear_model/C15/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C15/weighted_sum/Shape_1Shape$linear/linear_model/C15/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C15/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C15/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C15/weighted_sum/Slice_2Slice,linear/linear_model/C15/weighted_sum/Shape_12linear/linear_model/C15/weighted_sum/Slice_2/begin1linear/linear_model/C15/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C15/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C15/weighted_sum/concatConcatV2,linear/linear_model/C15/weighted_sum/Slice_1,linear/linear_model/C15/weighted_sum/Slice_20linear/linear_model/C15/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C15/weighted_sum/Reshape_2Reshape$linear/linear_model/C15/weighted_sum+linear/linear_model/C15/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C16/to_sparse_input/ShapeShapeExpandDims_19*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C16/to_sparse_input/CastCast-linear/linear_model/C16/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C16/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C16/to_sparse_input/NotEqualNotEqualExpandDims_190linear/linear_model/C16/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C16/to_sparse_input/WhereWhere0linear/linear_model/C16/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C16/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C16/to_sparse_input/ReshapeReshapeExpandDims_195linear/linear_model/C16/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C16/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C16/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C16/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C16/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C16/to_sparse_input/Where;linear/linear_model/C16/to_sparse_input/strided_slice/stack=linear/linear_model/C16/to_sparse_input/strided_slice/stack_1=linear/linear_model/C16/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C16/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C16/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C16/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C16/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C16/to_sparse_input/Where=linear/linear_model/C16/to_sparse_input/strided_slice_1/stack?linear/linear_model/C16/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C16/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C16/to_sparse_input/unstackUnpack,linear/linear_model/C16/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C16/to_sparse_input/stackPack1linear/linear_model/C16/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C16/to_sparse_input/MulMul7linear/linear_model/C16/to_sparse_input/strided_slice_1-linear/linear_model/C16/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C16/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C16/to_sparse_input/SumSum+linear/linear_model/C16/to_sparse_input/Mul=linear/linear_model/C16/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C16/to_sparse_input/AddAdd5linear/linear_model/C16/to_sparse_input/strided_slice+linear/linear_model/C16/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C16/to_sparse_input/GatherGather/linear/linear_model/C16/to_sparse_input/Reshape+linear/linear_model/C16/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C16/lookupStringToHashBucketFast.linear/linear_model/C16/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C16/Shape/CastCast,linear/linear_model/C16/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C16/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C16/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C16/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C16/strided_sliceStridedSlice"linear/linear_model/C16/Shape/Cast+linear/linear_model/C16/strided_slice/stack-linear/linear_model/C16/strided_slice/stack_1-linear/linear_model/C16/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C16/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C16/Cast/xPack%linear/linear_model/C16/strided_slice linear/linear_model/C16/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C16/CastCastlinear/linear_model/C16/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C16/SparseReshapeSparseReshape-linear/linear_model/C16/to_sparse_input/Where,linear/linear_model/C16/to_sparse_input/Castlinear/linear_model/C16/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C16/SparseReshape/IdentityIdentitylinear/linear_model/C16/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C16/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C16/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C16/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C16/weights/part_0
І
-linear/linear_model/C16/weights/part_0/AssignAssign&linear/linear_model/C16/weights/part_08linear/linear_model/C16/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C16/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C16/weights/part_0/readIdentity&linear/linear_model/C16/weights/part_0*9
_class/
-+loc:@linear/linear_model/C16/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C16/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C16/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C16/weighted_sum/SliceSlice'linear/linear_model/C16/SparseReshape:10linear/linear_model/C16/weighted_sum/Slice/begin/linear/linear_model/C16/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C16/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C16/weighted_sum/ProdProd*linear/linear_model/C16/weighted_sum/Slice*linear/linear_model/C16/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C16/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C16/weighted_sum/GatherGather'linear/linear_model/C16/SparseReshape:13linear/linear_model/C16/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C16/weighted_sum/Cast/xPack)linear/linear_model/C16/weighted_sum/Prod+linear/linear_model/C16/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C16/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C16/SparseReshape'linear/linear_model/C16/SparseReshape:1+linear/linear_model/C16/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C16/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C16/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C16/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C16/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C16/weighted_sum/SparseReshape/Identity3linear/linear_model/C16/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C16/weighted_sum/WhereWhere1linear/linear_model/C16/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C16/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C16/weighted_sum/ReshapeReshape*linear/linear_model/C16/weighted_sum/Where2linear/linear_model/C16/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C16/weighted_sum/Gather_1Gather2linear/linear_model/C16/weighted_sum/SparseReshape,linear/linear_model/C16/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C16/weighted_sum/Gather_2Gather;linear/linear_model/C16/weighted_sum/SparseReshape/Identity,linear/linear_model/C16/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C16/weighted_sum/IdentityIdentity4linear/linear_model/C16/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C16/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C16/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C16/weighted_sum/Gather_1-linear/linear_model/C16/weighted_sum/Gather_2-linear/linear_model/C16/weighted_sum/Identity>linear/linear_model/C16/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C16/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C16/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C16/weights/part_0/readClinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C16/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C16/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C16/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C16/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C16/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C16/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C16/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C16/weighted_sum/ShapeShape<linear/linear_model/C16/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C16/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C16/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C16/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C16/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C16/weighted_sum/Shape8linear/linear_model/C16/weighted_sum/strided_slice/stack:linear/linear_model/C16/weighted_sum/strided_slice/stack_1:linear/linear_model/C16/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C16/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C16/weighted_sum/stackPack,linear/linear_model/C16/weighted_sum/stack/02linear/linear_model/C16/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C16/weighted_sum/TileTile.linear/linear_model/C16/weighted_sum/Reshape_1*linear/linear_model/C16/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C16/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C16/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C16/weighted_sumSelect)linear/linear_model/C16/weighted_sum/Tile/linear/linear_model/C16/weighted_sum/zeros_like<linear/linear_model/C16/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C16/weighted_sum/Cast_1Cast'linear/linear_model/C16/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C16/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C16/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C16/weighted_sum/Slice_1Slice+linear/linear_model/C16/weighted_sum/Cast_12linear/linear_model/C16/weighted_sum/Slice_1/begin1linear/linear_model/C16/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C16/weighted_sum/Shape_1Shape$linear/linear_model/C16/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C16/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C16/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C16/weighted_sum/Slice_2Slice,linear/linear_model/C16/weighted_sum/Shape_12linear/linear_model/C16/weighted_sum/Slice_2/begin1linear/linear_model/C16/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C16/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C16/weighted_sum/concatConcatV2,linear/linear_model/C16/weighted_sum/Slice_1,linear/linear_model/C16/weighted_sum/Slice_20linear/linear_model/C16/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C16/weighted_sum/Reshape_2Reshape$linear/linear_model/C16/weighted_sum+linear/linear_model/C16/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
-linear/linear_model/C17/to_sparse_input/ShapeShapeExpandDims_9*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C17/to_sparse_input/CastCast-linear/linear_model/C17/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C17/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
Ѓ
0linear/linear_model/C17/to_sparse_input/NotEqualNotEqualExpandDims_90linear/linear_model/C17/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C17/to_sparse_input/WhereWhere0linear/linear_model/C17/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C17/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ї
/linear/linear_model/C17/to_sparse_input/ReshapeReshapeExpandDims_95linear/linear_model/C17/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C17/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C17/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C17/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C17/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C17/to_sparse_input/Where;linear/linear_model/C17/to_sparse_input/strided_slice/stack=linear/linear_model/C17/to_sparse_input/strided_slice/stack_1=linear/linear_model/C17/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C17/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C17/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C17/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C17/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C17/to_sparse_input/Where=linear/linear_model/C17/to_sparse_input/strided_slice_1/stack?linear/linear_model/C17/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C17/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C17/to_sparse_input/unstackUnpack,linear/linear_model/C17/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C17/to_sparse_input/stackPack1linear/linear_model/C17/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C17/to_sparse_input/MulMul7linear/linear_model/C17/to_sparse_input/strided_slice_1-linear/linear_model/C17/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C17/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C17/to_sparse_input/SumSum+linear/linear_model/C17/to_sparse_input/Mul=linear/linear_model/C17/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C17/to_sparse_input/AddAdd5linear/linear_model/C17/to_sparse_input/strided_slice+linear/linear_model/C17/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C17/to_sparse_input/GatherGather/linear/linear_model/C17/to_sparse_input/Reshape+linear/linear_model/C17/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C17/lookupStringToHashBucketFast.linear/linear_model/C17/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C17/Shape/CastCast,linear/linear_model/C17/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C17/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C17/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C17/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C17/strided_sliceStridedSlice"linear/linear_model/C17/Shape/Cast+linear/linear_model/C17/strided_slice/stack-linear/linear_model/C17/strided_slice/stack_1-linear/linear_model/C17/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C17/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C17/Cast/xPack%linear/linear_model/C17/strided_slice linear/linear_model/C17/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C17/CastCastlinear/linear_model/C17/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C17/SparseReshapeSparseReshape-linear/linear_model/C17/to_sparse_input/Where,linear/linear_model/C17/to_sparse_input/Castlinear/linear_model/C17/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C17/SparseReshape/IdentityIdentitylinear/linear_model/C17/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C17/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C17/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C17/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C17/weights/part_0
І
-linear/linear_model/C17/weights/part_0/AssignAssign&linear/linear_model/C17/weights/part_08linear/linear_model/C17/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C17/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C17/weights/part_0/readIdentity&linear/linear_model/C17/weights/part_0*9
_class/
-+loc:@linear/linear_model/C17/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C17/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C17/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C17/weighted_sum/SliceSlice'linear/linear_model/C17/SparseReshape:10linear/linear_model/C17/weighted_sum/Slice/begin/linear/linear_model/C17/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C17/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C17/weighted_sum/ProdProd*linear/linear_model/C17/weighted_sum/Slice*linear/linear_model/C17/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C17/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C17/weighted_sum/GatherGather'linear/linear_model/C17/SparseReshape:13linear/linear_model/C17/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C17/weighted_sum/Cast/xPack)linear/linear_model/C17/weighted_sum/Prod+linear/linear_model/C17/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C17/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C17/SparseReshape'linear/linear_model/C17/SparseReshape:1+linear/linear_model/C17/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C17/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C17/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C17/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C17/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C17/weighted_sum/SparseReshape/Identity3linear/linear_model/C17/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C17/weighted_sum/WhereWhere1linear/linear_model/C17/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C17/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C17/weighted_sum/ReshapeReshape*linear/linear_model/C17/weighted_sum/Where2linear/linear_model/C17/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C17/weighted_sum/Gather_1Gather2linear/linear_model/C17/weighted_sum/SparseReshape,linear/linear_model/C17/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C17/weighted_sum/Gather_2Gather;linear/linear_model/C17/weighted_sum/SparseReshape/Identity,linear/linear_model/C17/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C17/weighted_sum/IdentityIdentity4linear/linear_model/C17/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C17/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C17/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C17/weighted_sum/Gather_1-linear/linear_model/C17/weighted_sum/Gather_2-linear/linear_model/C17/weighted_sum/Identity>linear/linear_model/C17/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C17/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C17/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C17/weights/part_0/readClinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C17/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C17/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C17/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C17/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C17/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C17/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C17/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C17/weighted_sum/ShapeShape<linear/linear_model/C17/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C17/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C17/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C17/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C17/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C17/weighted_sum/Shape8linear/linear_model/C17/weighted_sum/strided_slice/stack:linear/linear_model/C17/weighted_sum/strided_slice/stack_1:linear/linear_model/C17/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C17/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C17/weighted_sum/stackPack,linear/linear_model/C17/weighted_sum/stack/02linear/linear_model/C17/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C17/weighted_sum/TileTile.linear/linear_model/C17/weighted_sum/Reshape_1*linear/linear_model/C17/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C17/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C17/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C17/weighted_sumSelect)linear/linear_model/C17/weighted_sum/Tile/linear/linear_model/C17/weighted_sum/zeros_like<linear/linear_model/C17/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C17/weighted_sum/Cast_1Cast'linear/linear_model/C17/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C17/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C17/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C17/weighted_sum/Slice_1Slice+linear/linear_model/C17/weighted_sum/Cast_12linear/linear_model/C17/weighted_sum/Slice_1/begin1linear/linear_model/C17/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C17/weighted_sum/Shape_1Shape$linear/linear_model/C17/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C17/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C17/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C17/weighted_sum/Slice_2Slice,linear/linear_model/C17/weighted_sum/Shape_12linear/linear_model/C17/weighted_sum/Slice_2/begin1linear/linear_model/C17/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C17/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C17/weighted_sum/concatConcatV2,linear/linear_model/C17/weighted_sum/Slice_1,linear/linear_model/C17/weighted_sum/Slice_20linear/linear_model/C17/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C17/weighted_sum/Reshape_2Reshape$linear/linear_model/C17/weighted_sum+linear/linear_model/C17/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C18/to_sparse_input/ShapeShapeExpandDims_38*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C18/to_sparse_input/CastCast-linear/linear_model/C18/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C18/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C18/to_sparse_input/NotEqualNotEqualExpandDims_380linear/linear_model/C18/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C18/to_sparse_input/WhereWhere0linear/linear_model/C18/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C18/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C18/to_sparse_input/ReshapeReshapeExpandDims_385linear/linear_model/C18/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C18/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C18/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C18/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C18/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C18/to_sparse_input/Where;linear/linear_model/C18/to_sparse_input/strided_slice/stack=linear/linear_model/C18/to_sparse_input/strided_slice/stack_1=linear/linear_model/C18/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C18/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C18/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C18/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C18/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C18/to_sparse_input/Where=linear/linear_model/C18/to_sparse_input/strided_slice_1/stack?linear/linear_model/C18/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C18/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C18/to_sparse_input/unstackUnpack,linear/linear_model/C18/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C18/to_sparse_input/stackPack1linear/linear_model/C18/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C18/to_sparse_input/MulMul7linear/linear_model/C18/to_sparse_input/strided_slice_1-linear/linear_model/C18/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C18/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C18/to_sparse_input/SumSum+linear/linear_model/C18/to_sparse_input/Mul=linear/linear_model/C18/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C18/to_sparse_input/AddAdd5linear/linear_model/C18/to_sparse_input/strided_slice+linear/linear_model/C18/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C18/to_sparse_input/GatherGather/linear/linear_model/C18/to_sparse_input/Reshape+linear/linear_model/C18/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C18/lookupStringToHashBucketFast.linear/linear_model/C18/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C18/Shape/CastCast,linear/linear_model/C18/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C18/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C18/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C18/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C18/strided_sliceStridedSlice"linear/linear_model/C18/Shape/Cast+linear/linear_model/C18/strided_slice/stack-linear/linear_model/C18/strided_slice/stack_1-linear/linear_model/C18/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C18/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C18/Cast/xPack%linear/linear_model/C18/strided_slice linear/linear_model/C18/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C18/CastCastlinear/linear_model/C18/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C18/SparseReshapeSparseReshape-linear/linear_model/C18/to_sparse_input/Where,linear/linear_model/C18/to_sparse_input/Castlinear/linear_model/C18/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C18/SparseReshape/IdentityIdentitylinear/linear_model/C18/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C18/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C18/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C18/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C18/weights/part_0
І
-linear/linear_model/C18/weights/part_0/AssignAssign&linear/linear_model/C18/weights/part_08linear/linear_model/C18/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C18/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C18/weights/part_0/readIdentity&linear/linear_model/C18/weights/part_0*9
_class/
-+loc:@linear/linear_model/C18/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C18/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C18/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C18/weighted_sum/SliceSlice'linear/linear_model/C18/SparseReshape:10linear/linear_model/C18/weighted_sum/Slice/begin/linear/linear_model/C18/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C18/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C18/weighted_sum/ProdProd*linear/linear_model/C18/weighted_sum/Slice*linear/linear_model/C18/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C18/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C18/weighted_sum/GatherGather'linear/linear_model/C18/SparseReshape:13linear/linear_model/C18/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C18/weighted_sum/Cast/xPack)linear/linear_model/C18/weighted_sum/Prod+linear/linear_model/C18/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C18/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C18/SparseReshape'linear/linear_model/C18/SparseReshape:1+linear/linear_model/C18/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C18/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C18/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C18/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C18/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C18/weighted_sum/SparseReshape/Identity3linear/linear_model/C18/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C18/weighted_sum/WhereWhere1linear/linear_model/C18/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C18/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C18/weighted_sum/ReshapeReshape*linear/linear_model/C18/weighted_sum/Where2linear/linear_model/C18/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C18/weighted_sum/Gather_1Gather2linear/linear_model/C18/weighted_sum/SparseReshape,linear/linear_model/C18/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C18/weighted_sum/Gather_2Gather;linear/linear_model/C18/weighted_sum/SparseReshape/Identity,linear/linear_model/C18/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C18/weighted_sum/IdentityIdentity4linear/linear_model/C18/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C18/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C18/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C18/weighted_sum/Gather_1-linear/linear_model/C18/weighted_sum/Gather_2-linear/linear_model/C18/weighted_sum/Identity>linear/linear_model/C18/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C18/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C18/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C18/weights/part_0/readClinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C18/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C18/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C18/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C18/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C18/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C18/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C18/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C18/weighted_sum/ShapeShape<linear/linear_model/C18/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C18/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C18/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C18/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C18/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C18/weighted_sum/Shape8linear/linear_model/C18/weighted_sum/strided_slice/stack:linear/linear_model/C18/weighted_sum/strided_slice/stack_1:linear/linear_model/C18/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C18/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C18/weighted_sum/stackPack,linear/linear_model/C18/weighted_sum/stack/02linear/linear_model/C18/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C18/weighted_sum/TileTile.linear/linear_model/C18/weighted_sum/Reshape_1*linear/linear_model/C18/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C18/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C18/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C18/weighted_sumSelect)linear/linear_model/C18/weighted_sum/Tile/linear/linear_model/C18/weighted_sum/zeros_like<linear/linear_model/C18/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C18/weighted_sum/Cast_1Cast'linear/linear_model/C18/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C18/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C18/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C18/weighted_sum/Slice_1Slice+linear/linear_model/C18/weighted_sum/Cast_12linear/linear_model/C18/weighted_sum/Slice_1/begin1linear/linear_model/C18/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C18/weighted_sum/Shape_1Shape$linear/linear_model/C18/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C18/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C18/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C18/weighted_sum/Slice_2Slice,linear/linear_model/C18/weighted_sum/Shape_12linear/linear_model/C18/weighted_sum/Slice_2/begin1linear/linear_model/C18/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C18/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C18/weighted_sum/concatConcatV2,linear/linear_model/C18/weighted_sum/Slice_1,linear/linear_model/C18/weighted_sum/Slice_20linear/linear_model/C18/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C18/weighted_sum/Reshape_2Reshape$linear/linear_model/C18/weighted_sum+linear/linear_model/C18/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C19/to_sparse_input/ShapeShapeExpandDims_11*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C19/to_sparse_input/CastCast-linear/linear_model/C19/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C19/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C19/to_sparse_input/NotEqualNotEqualExpandDims_110linear/linear_model/C19/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C19/to_sparse_input/WhereWhere0linear/linear_model/C19/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C19/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C19/to_sparse_input/ReshapeReshapeExpandDims_115linear/linear_model/C19/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C19/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C19/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C19/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C19/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C19/to_sparse_input/Where;linear/linear_model/C19/to_sparse_input/strided_slice/stack=linear/linear_model/C19/to_sparse_input/strided_slice/stack_1=linear/linear_model/C19/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C19/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C19/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C19/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C19/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C19/to_sparse_input/Where=linear/linear_model/C19/to_sparse_input/strided_slice_1/stack?linear/linear_model/C19/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C19/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C19/to_sparse_input/unstackUnpack,linear/linear_model/C19/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C19/to_sparse_input/stackPack1linear/linear_model/C19/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C19/to_sparse_input/MulMul7linear/linear_model/C19/to_sparse_input/strided_slice_1-linear/linear_model/C19/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C19/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C19/to_sparse_input/SumSum+linear/linear_model/C19/to_sparse_input/Mul=linear/linear_model/C19/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C19/to_sparse_input/AddAdd5linear/linear_model/C19/to_sparse_input/strided_slice+linear/linear_model/C19/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C19/to_sparse_input/GatherGather/linear/linear_model/C19/to_sparse_input/Reshape+linear/linear_model/C19/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C19/lookupStringToHashBucketFast.linear/linear_model/C19/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C19/Shape/CastCast,linear/linear_model/C19/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C19/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C19/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C19/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C19/strided_sliceStridedSlice"linear/linear_model/C19/Shape/Cast+linear/linear_model/C19/strided_slice/stack-linear/linear_model/C19/strided_slice/stack_1-linear/linear_model/C19/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C19/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C19/Cast/xPack%linear/linear_model/C19/strided_slice linear/linear_model/C19/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C19/CastCastlinear/linear_model/C19/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C19/SparseReshapeSparseReshape-linear/linear_model/C19/to_sparse_input/Where,linear/linear_model/C19/to_sparse_input/Castlinear/linear_model/C19/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C19/SparseReshape/IdentityIdentitylinear/linear_model/C19/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C19/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C19/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C19/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C19/weights/part_0
І
-linear/linear_model/C19/weights/part_0/AssignAssign&linear/linear_model/C19/weights/part_08linear/linear_model/C19/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C19/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C19/weights/part_0/readIdentity&linear/linear_model/C19/weights/part_0*9
_class/
-+loc:@linear/linear_model/C19/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C19/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C19/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C19/weighted_sum/SliceSlice'linear/linear_model/C19/SparseReshape:10linear/linear_model/C19/weighted_sum/Slice/begin/linear/linear_model/C19/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C19/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C19/weighted_sum/ProdProd*linear/linear_model/C19/weighted_sum/Slice*linear/linear_model/C19/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C19/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C19/weighted_sum/GatherGather'linear/linear_model/C19/SparseReshape:13linear/linear_model/C19/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C19/weighted_sum/Cast/xPack)linear/linear_model/C19/weighted_sum/Prod+linear/linear_model/C19/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C19/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C19/SparseReshape'linear/linear_model/C19/SparseReshape:1+linear/linear_model/C19/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C19/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C19/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C19/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C19/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C19/weighted_sum/SparseReshape/Identity3linear/linear_model/C19/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C19/weighted_sum/WhereWhere1linear/linear_model/C19/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C19/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C19/weighted_sum/ReshapeReshape*linear/linear_model/C19/weighted_sum/Where2linear/linear_model/C19/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C19/weighted_sum/Gather_1Gather2linear/linear_model/C19/weighted_sum/SparseReshape,linear/linear_model/C19/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C19/weighted_sum/Gather_2Gather;linear/linear_model/C19/weighted_sum/SparseReshape/Identity,linear/linear_model/C19/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C19/weighted_sum/IdentityIdentity4linear/linear_model/C19/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C19/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C19/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C19/weighted_sum/Gather_1-linear/linear_model/C19/weighted_sum/Gather_2-linear/linear_model/C19/weighted_sum/Identity>linear/linear_model/C19/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C19/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C19/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C19/weights/part_0/readClinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C19/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C19/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C19/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C19/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C19/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C19/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C19/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C19/weighted_sum/ShapeShape<linear/linear_model/C19/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C19/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C19/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C19/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C19/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C19/weighted_sum/Shape8linear/linear_model/C19/weighted_sum/strided_slice/stack:linear/linear_model/C19/weighted_sum/strided_slice/stack_1:linear/linear_model/C19/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C19/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C19/weighted_sum/stackPack,linear/linear_model/C19/weighted_sum/stack/02linear/linear_model/C19/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C19/weighted_sum/TileTile.linear/linear_model/C19/weighted_sum/Reshape_1*linear/linear_model/C19/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C19/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C19/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C19/weighted_sumSelect)linear/linear_model/C19/weighted_sum/Tile/linear/linear_model/C19/weighted_sum/zeros_like<linear/linear_model/C19/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C19/weighted_sum/Cast_1Cast'linear/linear_model/C19/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C19/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C19/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C19/weighted_sum/Slice_1Slice+linear/linear_model/C19/weighted_sum/Cast_12linear/linear_model/C19/weighted_sum/Slice_1/begin1linear/linear_model/C19/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C19/weighted_sum/Shape_1Shape$linear/linear_model/C19/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C19/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C19/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C19/weighted_sum/Slice_2Slice,linear/linear_model/C19/weighted_sum/Shape_12linear/linear_model/C19/weighted_sum/Slice_2/begin1linear/linear_model/C19/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C19/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C19/weighted_sum/concatConcatV2,linear/linear_model/C19/weighted_sum/Slice_1,linear/linear_model/C19/weighted_sum/Slice_20linear/linear_model/C19/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C19/weighted_sum/Reshape_2Reshape$linear/linear_model/C19/weighted_sum+linear/linear_model/C19/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
©
'linear/linear_model/C1_X_C1/SparseCrossSparseCrossExpandDims_10ExpandDims_10*
sparse_types
 *
N *
hashed_output(*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
internal_type0*
hash_keyюят„м*
out_type0	*
num_bucketsи*
dense_types
2
Н
&linear/linear_model/C1_X_C1/Shape/CastCast)linear/linear_model/C1_X_C1/SparseCross:2*

SrcT0	*

DstT0*
_output_shapes
:
y
/linear/linear_model/C1_X_C1/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C1_X_C1/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
{
1linear/linear_model/C1_X_C1/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
К
)linear/linear_model/C1_X_C1/strided_sliceStridedSlice&linear/linear_model/C1_X_C1/Shape/Cast/linear/linear_model/C1_X_C1/strided_slice/stack1linear/linear_model/C1_X_C1/strided_slice/stack_11linear/linear_model/C1_X_C1/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
o
$linear/linear_model/C1_X_C1/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
µ
"linear/linear_model/C1_X_C1/Cast/xPack)linear/linear_model/C1_X_C1/strided_slice$linear/linear_model/C1_X_C1/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
А
 linear/linear_model/C1_X_C1/CastCast"linear/linear_model/C1_X_C1/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
я
)linear/linear_model/C1_X_C1/SparseReshapeSparseReshape'linear/linear_model/C1_X_C1/SparseCross)linear/linear_model/C1_X_C1/SparseCross:2 linear/linear_model/C1_X_C1/Cast*-
_output_shapes
:€€€€€€€€€:
Ч
2linear/linear_model/C1_X_C1/SparseReshape/IdentityIdentity)linear/linear_model/C1_X_C1/SparseCross:1*#
_output_shapes
:€€€€€€€€€*
T0	
“
<linear/linear_model/C1_X_C1/weights/part_0/Initializer/zerosConst*
valueB	и*    *=
_class3
1/loc:@linear/linear_model/C1_X_C1/weights/part_0*
dtype0*
_output_shapes
:	и
я
*linear/linear_model/C1_X_C1/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*=
_class3
1/loc:@linear/linear_model/C1_X_C1/weights/part_0
Ј
1linear/linear_model/C1_X_C1/weights/part_0/AssignAssign*linear/linear_model/C1_X_C1/weights/part_0<linear/linear_model/C1_X_C1/weights/part_0/Initializer/zeros*=
_class3
1/loc:@linear/linear_model/C1_X_C1/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
–
/linear/linear_model/C1_X_C1/weights/part_0/readIdentity*linear/linear_model/C1_X_C1/weights/part_0*=
_class3
1/loc:@linear/linear_model/C1_X_C1/weights/part_0*
_output_shapes
:	и*
T0
~
4linear/linear_model/C1_X_C1/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
}
3linear/linear_model/C1_X_C1/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Б
.linear/linear_model/C1_X_C1/weighted_sum/SliceSlice+linear/linear_model/C1_X_C1/SparseReshape:14linear/linear_model/C1_X_C1/weighted_sum/Slice/begin3linear/linear_model/C1_X_C1/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
x
.linear/linear_model/C1_X_C1/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
”
-linear/linear_model/C1_X_C1/weighted_sum/ProdProd.linear/linear_model/C1_X_C1/weighted_sum/Slice.linear/linear_model/C1_X_C1/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
y
7linear/linear_model/C1_X_C1/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
о
/linear/linear_model/C1_X_C1/weighted_sum/GatherGather+linear/linear_model/C1_X_C1/SparseReshape:17linear/linear_model/C1_X_C1/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
—
/linear/linear_model/C1_X_C1/weighted_sum/Cast/xPack-linear/linear_model/C1_X_C1/weighted_sum/Prod/linear/linear_model/C1_X_C1/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
€
6linear/linear_model/C1_X_C1/weighted_sum/SparseReshapeSparseReshape)linear/linear_model/C1_X_C1/SparseReshape+linear/linear_model/C1_X_C1/SparseReshape:1/linear/linear_model/C1_X_C1/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
≠
?linear/linear_model/C1_X_C1/weighted_sum/SparseReshape/IdentityIdentity2linear/linear_model/C1_X_C1/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
y
7linear/linear_model/C1_X_C1/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
н
5linear/linear_model/C1_X_C1/weighted_sum/GreaterEqualGreaterEqual?linear/linear_model/C1_X_C1/weighted_sum/SparseReshape/Identity7linear/linear_model/C1_X_C1/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Ч
.linear/linear_model/C1_X_C1/weighted_sum/WhereWhere5linear/linear_model/C1_X_C1/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Й
6linear/linear_model/C1_X_C1/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
я
0linear/linear_model/C1_X_C1/weighted_sum/ReshapeReshape.linear/linear_model/C1_X_C1/weighted_sum/Where6linear/linear_model/C1_X_C1/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
Е
1linear/linear_model/C1_X_C1/weighted_sum/Gather_1Gather6linear/linear_model/C1_X_C1/weighted_sum/SparseReshape0linear/linear_model/C1_X_C1/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
К
1linear/linear_model/C1_X_C1/weighted_sum/Gather_2Gather?linear/linear_model/C1_X_C1/weighted_sum/SparseReshape/Identity0linear/linear_model/C1_X_C1/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ь
1linear/linear_model/C1_X_C1/weighted_sum/IdentityIdentity8linear/linear_model/C1_X_C1/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Д
Blinear/linear_model/C1_X_C1/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
£
Plinear/linear_model/C1_X_C1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows1linear/linear_model/C1_X_C1/weighted_sum/Gather_11linear/linear_model/C1_X_C1/weighted_sum/Gather_21linear/linear_model/C1_X_C1/weighted_sum/IdentityBlinear/linear_model/C1_X_C1/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
•
Tlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
І
Vlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
І
Vlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
Nlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicePlinear/linear_model/C1_X_C1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsTlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/strided_slice/stackVlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Vlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Џ
Elinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/CastCastNlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
с
Glinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/UniqueUniqueRlinear/linear_model/C1_X_C1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
ф
Qlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/embedding_lookupGather/linear/linear_model/C1_X_C1/weights/part_0/readGlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*=
_class3
1/loc:@linear/linear_model/C1_X_C1/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ч
@linear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparseSparseSegmentSumQlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/embedding_lookupIlinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/Unique:1Elinear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Й
8linear/linear_model/C1_X_C1/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
Л
2linear/linear_model/C1_X_C1/weighted_sum/Reshape_1ReshapeRlinear/linear_model/C1_X_C1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:28linear/linear_model/C1_X_C1/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

Ѓ
.linear/linear_model/C1_X_C1/weighted_sum/ShapeShape@linear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Ж
<linear/linear_model/C1_X_C1/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
И
>linear/linear_model/C1_X_C1/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
И
>linear/linear_model/C1_X_C1/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
∆
6linear/linear_model/C1_X_C1/weighted_sum/strided_sliceStridedSlice.linear/linear_model/C1_X_C1/weighted_sum/Shape<linear/linear_model/C1_X_C1/weighted_sum/strided_slice/stack>linear/linear_model/C1_X_C1/weighted_sum/strided_slice/stack_1>linear/linear_model/C1_X_C1/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
r
0linear/linear_model/C1_X_C1/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Џ
.linear/linear_model/C1_X_C1/weighted_sum/stackPack0linear/linear_model/C1_X_C1/weighted_sum/stack/06linear/linear_model/C1_X_C1/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
ж
-linear/linear_model/C1_X_C1/weighted_sum/TileTile2linear/linear_model/C1_X_C1/weighted_sum/Reshape_1.linear/linear_model/C1_X_C1/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

і
3linear/linear_model/C1_X_C1/weighted_sum/zeros_like	ZerosLike@linear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
К
(linear/linear_model/C1_X_C1/weighted_sumSelect-linear/linear_model/C1_X_C1/weighted_sum/Tile3linear/linear_model/C1_X_C1/weighted_sum/zeros_like@linear/linear_model/C1_X_C1/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Ш
/linear/linear_model/C1_X_C1/weighted_sum/Cast_1Cast+linear/linear_model/C1_X_C1/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
А
6linear/linear_model/C1_X_C1/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0

5linear/linear_model/C1_X_C1/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Л
0linear/linear_model/C1_X_C1/weighted_sum/Slice_1Slice/linear/linear_model/C1_X_C1/weighted_sum/Cast_16linear/linear_model/C1_X_C1/weighted_sum/Slice_1/begin5linear/linear_model/C1_X_C1/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Ш
0linear/linear_model/C1_X_C1/weighted_sum/Shape_1Shape(linear/linear_model/C1_X_C1/weighted_sum*
out_type0*
_output_shapes
:*
T0
А
6linear/linear_model/C1_X_C1/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
И
5linear/linear_model/C1_X_C1/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
М
0linear/linear_model/C1_X_C1/weighted_sum/Slice_2Slice0linear/linear_model/C1_X_C1/weighted_sum/Shape_16linear/linear_model/C1_X_C1/weighted_sum/Slice_2/begin5linear/linear_model/C1_X_C1/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
v
4linear/linear_model/C1_X_C1/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
П
/linear/linear_model/C1_X_C1/weighted_sum/concatConcatV20linear/linear_model/C1_X_C1/weighted_sum/Slice_10linear/linear_model/C1_X_C1/weighted_sum/Slice_24linear/linear_model/C1_X_C1/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
Ў
2linear/linear_model/C1_X_C1/weighted_sum/Reshape_2Reshape(linear/linear_model/C1_X_C1/weighted_sum/linear/linear_model/C1_X_C1/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
,linear/linear_model/C2/to_sparse_input/ShapeShapeExpandDims_35*
out_type0*
_output_shapes
:*
T0
Х
+linear/linear_model/C2/to_sparse_input/CastCast,linear/linear_model/C2/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
p
/linear/linear_model/C2/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
≠
/linear/linear_model/C2/to_sparse_input/NotEqualNotEqualExpandDims_35/linear/linear_model/C2/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
П
,linear/linear_model/C2/to_sparse_input/WhereWhere/linear/linear_model/C2/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
З
4linear/linear_model/C2/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ї
.linear/linear_model/C2/to_sparse_input/ReshapeReshapeExpandDims_354linear/linear_model/C2/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Л
:linear/linear_model/C2/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C2/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C2/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
…
4linear/linear_model/C2/to_sparse_input/strided_sliceStridedSlice,linear/linear_model/C2/to_sparse_input/Where:linear/linear_model/C2/to_sparse_input/strided_slice/stack<linear/linear_model/C2/to_sparse_input/strided_slice/stack_1<linear/linear_model/C2/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Н
<linear/linear_model/C2/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
П
>linear/linear_model/C2/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
П
>linear/linear_model/C2/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
6linear/linear_model/C2/to_sparse_input/strided_slice_1StridedSlice,linear/linear_model/C2/to_sparse_input/Where<linear/linear_model/C2/to_sparse_input/strided_slice_1/stack>linear/linear_model/C2/to_sparse_input/strided_slice_1/stack_1>linear/linear_model/C2/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
Я
.linear/linear_model/C2/to_sparse_input/unstackUnpack+linear/linear_model/C2/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
†
,linear/linear_model/C2/to_sparse_input/stackPack0linear/linear_model/C2/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
…
*linear/linear_model/C2/to_sparse_input/MulMul6linear/linear_model/C2/to_sparse_input/strided_slice_1,linear/linear_model/C2/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Ж
<linear/linear_model/C2/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ж
*linear/linear_model/C2/to_sparse_input/SumSum*linear/linear_model/C2/to_sparse_input/Mul<linear/linear_model/C2/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
Ѕ
*linear/linear_model/C2/to_sparse_input/AddAdd4linear/linear_model/C2/to_sparse_input/strided_slice*linear/linear_model/C2/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
п
-linear/linear_model/C2/to_sparse_input/GatherGather.linear/linear_model/C2/to_sparse_input/Reshape*linear/linear_model/C2/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Я
linear/linear_model/C2/lookupStringToHashBucketFast-linear/linear_model/C2/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
К
!linear/linear_model/C2/Shape/CastCast+linear/linear_model/C2/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
t
*linear/linear_model/C2/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
v
,linear/linear_model/C2/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
v
,linear/linear_model/C2/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
$linear/linear_model/C2/strided_sliceStridedSlice!linear/linear_model/C2/Shape/Cast*linear/linear_model/C2/strided_slice/stack,linear/linear_model/C2/strided_slice/stack_1,linear/linear_model/C2/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
j
linear/linear_model/C2/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
¶
linear/linear_model/C2/Cast/xPack$linear/linear_model/C2/strided_slicelinear/linear_model/C2/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
v
linear/linear_model/C2/CastCastlinear/linear_model/C2/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
№
$linear/linear_model/C2/SparseReshapeSparseReshape,linear/linear_model/C2/to_sparse_input/Where+linear/linear_model/C2/to_sparse_input/Castlinear/linear_model/C2/Cast*-
_output_shapes
:€€€€€€€€€:
Ж
-linear/linear_model/C2/SparseReshape/IdentityIdentitylinear/linear_model/C2/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
»
7linear/linear_model/C2/weights/part_0/Initializer/zerosConst*
valueB	и*    *8
_class.
,*loc:@linear/linear_model/C2/weights/part_0*
dtype0*
_output_shapes
:	и
’
%linear/linear_model/C2/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*8
_class.
,*loc:@linear/linear_model/C2/weights/part_0
£
,linear/linear_model/C2/weights/part_0/AssignAssign%linear/linear_model/C2/weights/part_07linear/linear_model/C2/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/C2/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ѕ
*linear/linear_model/C2/weights/part_0/readIdentity%linear/linear_model/C2/weights/part_0*8
_class.
,*loc:@linear/linear_model/C2/weights/part_0*
_output_shapes
:	и*
T0
y
/linear/linear_model/C2/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
x
.linear/linear_model/C2/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
н
)linear/linear_model/C2/weighted_sum/SliceSlice&linear/linear_model/C2/SparseReshape:1/linear/linear_model/C2/weighted_sum/Slice/begin.linear/linear_model/C2/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
s
)linear/linear_model/C2/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ƒ
(linear/linear_model/C2/weighted_sum/ProdProd)linear/linear_model/C2/weighted_sum/Slice)linear/linear_model/C2/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
t
2linear/linear_model/C2/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
я
*linear/linear_model/C2/weighted_sum/GatherGather&linear/linear_model/C2/SparseReshape:12linear/linear_model/C2/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
¬
*linear/linear_model/C2/weighted_sum/Cast/xPack(linear/linear_model/C2/weighted_sum/Prod*linear/linear_model/C2/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
л
1linear/linear_model/C2/weighted_sum/SparseReshapeSparseReshape$linear/linear_model/C2/SparseReshape&linear/linear_model/C2/SparseReshape:1*linear/linear_model/C2/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
£
:linear/linear_model/C2/weighted_sum/SparseReshape/IdentityIdentity-linear/linear_model/C2/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
t
2linear/linear_model/C2/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ё
0linear/linear_model/C2/weighted_sum/GreaterEqualGreaterEqual:linear/linear_model/C2/weighted_sum/SparseReshape/Identity2linear/linear_model/C2/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Н
)linear/linear_model/C2/weighted_sum/WhereWhere0linear/linear_model/C2/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/C2/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
–
+linear/linear_model/C2/weighted_sum/ReshapeReshape)linear/linear_model/C2/weighted_sum/Where1linear/linear_model/C2/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
ц
,linear/linear_model/C2/weighted_sum/Gather_1Gather1linear/linear_model/C2/weighted_sum/SparseReshape+linear/linear_model/C2/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ы
,linear/linear_model/C2/weighted_sum/Gather_2Gather:linear/linear_model/C2/weighted_sum/SparseReshape/Identity+linear/linear_model/C2/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Т
,linear/linear_model/C2/weighted_sum/IdentityIdentity3linear/linear_model/C2/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear_model/C2/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
К
Klinear/linear_model/C2/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear_model/C2/weighted_sum/Gather_1,linear/linear_model/C2/weighted_sum/Gather_2,linear/linear_model/C2/weighted_sum/Identity=linear/linear_model/C2/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
†
Olinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Љ
Ilinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear_model/C2/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/strided_slice/stackQlinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
–
@linear/linear_model/C2/weighted_sum/embedding_lookup_sparse/CastCastIlinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
з
Blinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/UniqueUniqueMlinear/linear_model/C2/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
а
Llinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/embedding_lookupGather*linear/linear_model/C2/weights/part_0/readBlinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*8
_class.
,*loc:@linear/linear_model/C2/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
г
;linear/linear_model/C2/weighted_sum/embedding_lookup_sparseSparseSegmentSumLlinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/embedding_lookupDlinear/linear_model/C2/weighted_sum/embedding_lookup_sparse/Unique:1@linear/linear_model/C2/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Д
3linear/linear_model/C2/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
ь
-linear/linear_model/C2/weighted_sum/Reshape_1ReshapeMlinear/linear_model/C2/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear_model/C2/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

§
)linear/linear_model/C2/weighted_sum/ShapeShape;linear/linear_model/C2/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Б
7linear/linear_model/C2/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C2/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C2/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
1linear/linear_model/C2/weighted_sum/strided_sliceStridedSlice)linear/linear_model/C2/weighted_sum/Shape7linear/linear_model/C2/weighted_sum/strided_slice/stack9linear/linear_model/C2/weighted_sum/strided_slice/stack_19linear/linear_model/C2/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
m
+linear/linear_model/C2/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ћ
)linear/linear_model/C2/weighted_sum/stackPack+linear/linear_model/C2/weighted_sum/stack/01linear/linear_model/C2/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
„
(linear/linear_model/C2/weighted_sum/TileTile-linear/linear_model/C2/weighted_sum/Reshape_1)linear/linear_model/C2/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

™
.linear/linear_model/C2/weighted_sum/zeros_like	ZerosLike;linear/linear_model/C2/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ц
#linear/linear_model/C2/weighted_sumSelect(linear/linear_model/C2/weighted_sum/Tile.linear/linear_model/C2/weighted_sum/zeros_like;linear/linear_model/C2/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
О
*linear/linear_model/C2/weighted_sum/Cast_1Cast&linear/linear_model/C2/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
{
1linear/linear_model/C2/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
z
0linear/linear_model/C2/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
+linear/linear_model/C2/weighted_sum/Slice_1Slice*linear/linear_model/C2/weighted_sum/Cast_11linear/linear_model/C2/weighted_sum/Slice_1/begin0linear/linear_model/C2/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
О
+linear/linear_model/C2/weighted_sum/Shape_1Shape#linear/linear_model/C2/weighted_sum*
out_type0*
_output_shapes
:*
T0
{
1linear/linear_model/C2/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Г
0linear/linear_model/C2/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ш
+linear/linear_model/C2/weighted_sum/Slice_2Slice+linear/linear_model/C2/weighted_sum/Shape_11linear/linear_model/C2/weighted_sum/Slice_2/begin0linear/linear_model/C2/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
q
/linear/linear_model/C2/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ы
*linear/linear_model/C2/weighted_sum/concatConcatV2+linear/linear_model/C2/weighted_sum/Slice_1+linear/linear_model/C2/weighted_sum/Slice_2/linear/linear_model/C2/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
…
-linear/linear_model/C2/weighted_sum/Reshape_2Reshape#linear/linear_model/C2/weighted_sum*linear/linear_model/C2/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C20/to_sparse_input/ShapeShapeExpandDims_37*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C20/to_sparse_input/CastCast-linear/linear_model/C20/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C20/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C20/to_sparse_input/NotEqualNotEqualExpandDims_370linear/linear_model/C20/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C20/to_sparse_input/WhereWhere0linear/linear_model/C20/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C20/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C20/to_sparse_input/ReshapeReshapeExpandDims_375linear/linear_model/C20/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C20/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C20/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C20/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C20/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C20/to_sparse_input/Where;linear/linear_model/C20/to_sparse_input/strided_slice/stack=linear/linear_model/C20/to_sparse_input/strided_slice/stack_1=linear/linear_model/C20/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C20/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C20/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C20/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C20/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C20/to_sparse_input/Where=linear/linear_model/C20/to_sparse_input/strided_slice_1/stack?linear/linear_model/C20/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C20/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C20/to_sparse_input/unstackUnpack,linear/linear_model/C20/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C20/to_sparse_input/stackPack1linear/linear_model/C20/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C20/to_sparse_input/MulMul7linear/linear_model/C20/to_sparse_input/strided_slice_1-linear/linear_model/C20/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C20/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C20/to_sparse_input/SumSum+linear/linear_model/C20/to_sparse_input/Mul=linear/linear_model/C20/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C20/to_sparse_input/AddAdd5linear/linear_model/C20/to_sparse_input/strided_slice+linear/linear_model/C20/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C20/to_sparse_input/GatherGather/linear/linear_model/C20/to_sparse_input/Reshape+linear/linear_model/C20/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C20/lookupStringToHashBucketFast.linear/linear_model/C20/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C20/Shape/CastCast,linear/linear_model/C20/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C20/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C20/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C20/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C20/strided_sliceStridedSlice"linear/linear_model/C20/Shape/Cast+linear/linear_model/C20/strided_slice/stack-linear/linear_model/C20/strided_slice/stack_1-linear/linear_model/C20/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C20/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C20/Cast/xPack%linear/linear_model/C20/strided_slice linear/linear_model/C20/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C20/CastCastlinear/linear_model/C20/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C20/SparseReshapeSparseReshape-linear/linear_model/C20/to_sparse_input/Where,linear/linear_model/C20/to_sparse_input/Castlinear/linear_model/C20/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C20/SparseReshape/IdentityIdentitylinear/linear_model/C20/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C20/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C20/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C20/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C20/weights/part_0
І
-linear/linear_model/C20/weights/part_0/AssignAssign&linear/linear_model/C20/weights/part_08linear/linear_model/C20/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C20/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C20/weights/part_0/readIdentity&linear/linear_model/C20/weights/part_0*9
_class/
-+loc:@linear/linear_model/C20/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C20/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C20/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C20/weighted_sum/SliceSlice'linear/linear_model/C20/SparseReshape:10linear/linear_model/C20/weighted_sum/Slice/begin/linear/linear_model/C20/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C20/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C20/weighted_sum/ProdProd*linear/linear_model/C20/weighted_sum/Slice*linear/linear_model/C20/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C20/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C20/weighted_sum/GatherGather'linear/linear_model/C20/SparseReshape:13linear/linear_model/C20/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C20/weighted_sum/Cast/xPack)linear/linear_model/C20/weighted_sum/Prod+linear/linear_model/C20/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C20/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C20/SparseReshape'linear/linear_model/C20/SparseReshape:1+linear/linear_model/C20/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C20/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C20/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C20/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C20/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C20/weighted_sum/SparseReshape/Identity3linear/linear_model/C20/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C20/weighted_sum/WhereWhere1linear/linear_model/C20/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C20/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C20/weighted_sum/ReshapeReshape*linear/linear_model/C20/weighted_sum/Where2linear/linear_model/C20/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C20/weighted_sum/Gather_1Gather2linear/linear_model/C20/weighted_sum/SparseReshape,linear/linear_model/C20/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C20/weighted_sum/Gather_2Gather;linear/linear_model/C20/weighted_sum/SparseReshape/Identity,linear/linear_model/C20/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C20/weighted_sum/IdentityIdentity4linear/linear_model/C20/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C20/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C20/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C20/weighted_sum/Gather_1-linear/linear_model/C20/weighted_sum/Gather_2-linear/linear_model/C20/weighted_sum/Identity>linear/linear_model/C20/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C20/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C20/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C20/weights/part_0/readClinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C20/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C20/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C20/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C20/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C20/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C20/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C20/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C20/weighted_sum/ShapeShape<linear/linear_model/C20/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C20/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C20/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C20/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C20/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C20/weighted_sum/Shape8linear/linear_model/C20/weighted_sum/strided_slice/stack:linear/linear_model/C20/weighted_sum/strided_slice/stack_1:linear/linear_model/C20/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C20/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C20/weighted_sum/stackPack,linear/linear_model/C20/weighted_sum/stack/02linear/linear_model/C20/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C20/weighted_sum/TileTile.linear/linear_model/C20/weighted_sum/Reshape_1*linear/linear_model/C20/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C20/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C20/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C20/weighted_sumSelect)linear/linear_model/C20/weighted_sum/Tile/linear/linear_model/C20/weighted_sum/zeros_like<linear/linear_model/C20/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C20/weighted_sum/Cast_1Cast'linear/linear_model/C20/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C20/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C20/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C20/weighted_sum/Slice_1Slice+linear/linear_model/C20/weighted_sum/Cast_12linear/linear_model/C20/weighted_sum/Slice_1/begin1linear/linear_model/C20/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C20/weighted_sum/Shape_1Shape$linear/linear_model/C20/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C20/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C20/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C20/weighted_sum/Slice_2Slice,linear/linear_model/C20/weighted_sum/Shape_12linear/linear_model/C20/weighted_sum/Slice_2/begin1linear/linear_model/C20/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C20/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C20/weighted_sum/concatConcatV2,linear/linear_model/C20/weighted_sum/Slice_1,linear/linear_model/C20/weighted_sum/Slice_20linear/linear_model/C20/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C20/weighted_sum/Reshape_2Reshape$linear/linear_model/C20/weighted_sum+linear/linear_model/C20/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C21/to_sparse_input/ShapeShapeExpandDims_26*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C21/to_sparse_input/CastCast-linear/linear_model/C21/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C21/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C21/to_sparse_input/NotEqualNotEqualExpandDims_260linear/linear_model/C21/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C21/to_sparse_input/WhereWhere0linear/linear_model/C21/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C21/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C21/to_sparse_input/ReshapeReshapeExpandDims_265linear/linear_model/C21/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C21/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C21/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C21/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C21/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C21/to_sparse_input/Where;linear/linear_model/C21/to_sparse_input/strided_slice/stack=linear/linear_model/C21/to_sparse_input/strided_slice/stack_1=linear/linear_model/C21/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C21/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C21/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C21/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C21/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C21/to_sparse_input/Where=linear/linear_model/C21/to_sparse_input/strided_slice_1/stack?linear/linear_model/C21/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C21/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C21/to_sparse_input/unstackUnpack,linear/linear_model/C21/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C21/to_sparse_input/stackPack1linear/linear_model/C21/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C21/to_sparse_input/MulMul7linear/linear_model/C21/to_sparse_input/strided_slice_1-linear/linear_model/C21/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C21/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C21/to_sparse_input/SumSum+linear/linear_model/C21/to_sparse_input/Mul=linear/linear_model/C21/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C21/to_sparse_input/AddAdd5linear/linear_model/C21/to_sparse_input/strided_slice+linear/linear_model/C21/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C21/to_sparse_input/GatherGather/linear/linear_model/C21/to_sparse_input/Reshape+linear/linear_model/C21/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C21/lookupStringToHashBucketFast.linear/linear_model/C21/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C21/Shape/CastCast,linear/linear_model/C21/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C21/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C21/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C21/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C21/strided_sliceStridedSlice"linear/linear_model/C21/Shape/Cast+linear/linear_model/C21/strided_slice/stack-linear/linear_model/C21/strided_slice/stack_1-linear/linear_model/C21/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C21/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C21/Cast/xPack%linear/linear_model/C21/strided_slice linear/linear_model/C21/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C21/CastCastlinear/linear_model/C21/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C21/SparseReshapeSparseReshape-linear/linear_model/C21/to_sparse_input/Where,linear/linear_model/C21/to_sparse_input/Castlinear/linear_model/C21/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C21/SparseReshape/IdentityIdentitylinear/linear_model/C21/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C21/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C21/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C21/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C21/weights/part_0
І
-linear/linear_model/C21/weights/part_0/AssignAssign&linear/linear_model/C21/weights/part_08linear/linear_model/C21/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C21/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C21/weights/part_0/readIdentity&linear/linear_model/C21/weights/part_0*9
_class/
-+loc:@linear/linear_model/C21/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C21/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C21/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C21/weighted_sum/SliceSlice'linear/linear_model/C21/SparseReshape:10linear/linear_model/C21/weighted_sum/Slice/begin/linear/linear_model/C21/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C21/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C21/weighted_sum/ProdProd*linear/linear_model/C21/weighted_sum/Slice*linear/linear_model/C21/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C21/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C21/weighted_sum/GatherGather'linear/linear_model/C21/SparseReshape:13linear/linear_model/C21/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C21/weighted_sum/Cast/xPack)linear/linear_model/C21/weighted_sum/Prod+linear/linear_model/C21/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C21/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C21/SparseReshape'linear/linear_model/C21/SparseReshape:1+linear/linear_model/C21/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C21/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C21/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C21/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C21/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C21/weighted_sum/SparseReshape/Identity3linear/linear_model/C21/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C21/weighted_sum/WhereWhere1linear/linear_model/C21/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C21/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C21/weighted_sum/ReshapeReshape*linear/linear_model/C21/weighted_sum/Where2linear/linear_model/C21/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C21/weighted_sum/Gather_1Gather2linear/linear_model/C21/weighted_sum/SparseReshape,linear/linear_model/C21/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C21/weighted_sum/Gather_2Gather;linear/linear_model/C21/weighted_sum/SparseReshape/Identity,linear/linear_model/C21/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C21/weighted_sum/IdentityIdentity4linear/linear_model/C21/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C21/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C21/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C21/weighted_sum/Gather_1-linear/linear_model/C21/weighted_sum/Gather_2-linear/linear_model/C21/weighted_sum/Identity>linear/linear_model/C21/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C21/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C21/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C21/weights/part_0/readClinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C21/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C21/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C21/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C21/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C21/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C21/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C21/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C21/weighted_sum/ShapeShape<linear/linear_model/C21/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C21/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C21/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C21/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C21/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C21/weighted_sum/Shape8linear/linear_model/C21/weighted_sum/strided_slice/stack:linear/linear_model/C21/weighted_sum/strided_slice/stack_1:linear/linear_model/C21/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C21/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C21/weighted_sum/stackPack,linear/linear_model/C21/weighted_sum/stack/02linear/linear_model/C21/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C21/weighted_sum/TileTile.linear/linear_model/C21/weighted_sum/Reshape_1*linear/linear_model/C21/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C21/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C21/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C21/weighted_sumSelect)linear/linear_model/C21/weighted_sum/Tile/linear/linear_model/C21/weighted_sum/zeros_like<linear/linear_model/C21/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C21/weighted_sum/Cast_1Cast'linear/linear_model/C21/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C21/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C21/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C21/weighted_sum/Slice_1Slice+linear/linear_model/C21/weighted_sum/Cast_12linear/linear_model/C21/weighted_sum/Slice_1/begin1linear/linear_model/C21/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C21/weighted_sum/Shape_1Shape$linear/linear_model/C21/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C21/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C21/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C21/weighted_sum/Slice_2Slice,linear/linear_model/C21/weighted_sum/Shape_12linear/linear_model/C21/weighted_sum/Slice_2/begin1linear/linear_model/C21/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C21/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C21/weighted_sum/concatConcatV2,linear/linear_model/C21/weighted_sum/Slice_1,linear/linear_model/C21/weighted_sum/Slice_20linear/linear_model/C21/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C21/weighted_sum/Reshape_2Reshape$linear/linear_model/C21/weighted_sum+linear/linear_model/C21/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C22/to_sparse_input/ShapeShapeExpandDims_24*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C22/to_sparse_input/CastCast-linear/linear_model/C22/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C22/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C22/to_sparse_input/NotEqualNotEqualExpandDims_240linear/linear_model/C22/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C22/to_sparse_input/WhereWhere0linear/linear_model/C22/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C22/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C22/to_sparse_input/ReshapeReshapeExpandDims_245linear/linear_model/C22/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C22/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C22/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C22/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C22/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C22/to_sparse_input/Where;linear/linear_model/C22/to_sparse_input/strided_slice/stack=linear/linear_model/C22/to_sparse_input/strided_slice/stack_1=linear/linear_model/C22/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C22/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C22/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C22/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C22/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C22/to_sparse_input/Where=linear/linear_model/C22/to_sparse_input/strided_slice_1/stack?linear/linear_model/C22/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C22/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C22/to_sparse_input/unstackUnpack,linear/linear_model/C22/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C22/to_sparse_input/stackPack1linear/linear_model/C22/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C22/to_sparse_input/MulMul7linear/linear_model/C22/to_sparse_input/strided_slice_1-linear/linear_model/C22/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C22/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C22/to_sparse_input/SumSum+linear/linear_model/C22/to_sparse_input/Mul=linear/linear_model/C22/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C22/to_sparse_input/AddAdd5linear/linear_model/C22/to_sparse_input/strided_slice+linear/linear_model/C22/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C22/to_sparse_input/GatherGather/linear/linear_model/C22/to_sparse_input/Reshape+linear/linear_model/C22/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C22/lookupStringToHashBucketFast.linear/linear_model/C22/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C22/Shape/CastCast,linear/linear_model/C22/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C22/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C22/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C22/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C22/strided_sliceStridedSlice"linear/linear_model/C22/Shape/Cast+linear/linear_model/C22/strided_slice/stack-linear/linear_model/C22/strided_slice/stack_1-linear/linear_model/C22/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C22/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C22/Cast/xPack%linear/linear_model/C22/strided_slice linear/linear_model/C22/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C22/CastCastlinear/linear_model/C22/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C22/SparseReshapeSparseReshape-linear/linear_model/C22/to_sparse_input/Where,linear/linear_model/C22/to_sparse_input/Castlinear/linear_model/C22/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C22/SparseReshape/IdentityIdentitylinear/linear_model/C22/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C22/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C22/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C22/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C22/weights/part_0
І
-linear/linear_model/C22/weights/part_0/AssignAssign&linear/linear_model/C22/weights/part_08linear/linear_model/C22/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C22/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C22/weights/part_0/readIdentity&linear/linear_model/C22/weights/part_0*9
_class/
-+loc:@linear/linear_model/C22/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C22/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C22/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C22/weighted_sum/SliceSlice'linear/linear_model/C22/SparseReshape:10linear/linear_model/C22/weighted_sum/Slice/begin/linear/linear_model/C22/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C22/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C22/weighted_sum/ProdProd*linear/linear_model/C22/weighted_sum/Slice*linear/linear_model/C22/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C22/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C22/weighted_sum/GatherGather'linear/linear_model/C22/SparseReshape:13linear/linear_model/C22/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C22/weighted_sum/Cast/xPack)linear/linear_model/C22/weighted_sum/Prod+linear/linear_model/C22/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C22/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C22/SparseReshape'linear/linear_model/C22/SparseReshape:1+linear/linear_model/C22/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C22/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C22/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C22/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C22/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C22/weighted_sum/SparseReshape/Identity3linear/linear_model/C22/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C22/weighted_sum/WhereWhere1linear/linear_model/C22/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C22/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C22/weighted_sum/ReshapeReshape*linear/linear_model/C22/weighted_sum/Where2linear/linear_model/C22/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C22/weighted_sum/Gather_1Gather2linear/linear_model/C22/weighted_sum/SparseReshape,linear/linear_model/C22/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C22/weighted_sum/Gather_2Gather;linear/linear_model/C22/weighted_sum/SparseReshape/Identity,linear/linear_model/C22/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C22/weighted_sum/IdentityIdentity4linear/linear_model/C22/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C22/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C22/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C22/weighted_sum/Gather_1-linear/linear_model/C22/weighted_sum/Gather_2-linear/linear_model/C22/weighted_sum/Identity>linear/linear_model/C22/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C22/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C22/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C22/weights/part_0/readClinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C22/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C22/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C22/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C22/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C22/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C22/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C22/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C22/weighted_sum/ShapeShape<linear/linear_model/C22/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C22/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C22/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C22/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C22/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C22/weighted_sum/Shape8linear/linear_model/C22/weighted_sum/strided_slice/stack:linear/linear_model/C22/weighted_sum/strided_slice/stack_1:linear/linear_model/C22/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C22/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C22/weighted_sum/stackPack,linear/linear_model/C22/weighted_sum/stack/02linear/linear_model/C22/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C22/weighted_sum/TileTile.linear/linear_model/C22/weighted_sum/Reshape_1*linear/linear_model/C22/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C22/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C22/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C22/weighted_sumSelect)linear/linear_model/C22/weighted_sum/Tile/linear/linear_model/C22/weighted_sum/zeros_like<linear/linear_model/C22/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C22/weighted_sum/Cast_1Cast'linear/linear_model/C22/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C22/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C22/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C22/weighted_sum/Slice_1Slice+linear/linear_model/C22/weighted_sum/Cast_12linear/linear_model/C22/weighted_sum/Slice_1/begin1linear/linear_model/C22/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C22/weighted_sum/Shape_1Shape$linear/linear_model/C22/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C22/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C22/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C22/weighted_sum/Slice_2Slice,linear/linear_model/C22/weighted_sum/Shape_12linear/linear_model/C22/weighted_sum/Slice_2/begin1linear/linear_model/C22/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C22/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C22/weighted_sum/concatConcatV2,linear/linear_model/C22/weighted_sum/Slice_1,linear/linear_model/C22/weighted_sum/Slice_20linear/linear_model/C22/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C22/weighted_sum/Reshape_2Reshape$linear/linear_model/C22/weighted_sum+linear/linear_model/C22/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C23/to_sparse_input/ShapeShapeExpandDims_27*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C23/to_sparse_input/CastCast-linear/linear_model/C23/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C23/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C23/to_sparse_input/NotEqualNotEqualExpandDims_270linear/linear_model/C23/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C23/to_sparse_input/WhereWhere0linear/linear_model/C23/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C23/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C23/to_sparse_input/ReshapeReshapeExpandDims_275linear/linear_model/C23/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C23/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C23/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C23/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C23/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C23/to_sparse_input/Where;linear/linear_model/C23/to_sparse_input/strided_slice/stack=linear/linear_model/C23/to_sparse_input/strided_slice/stack_1=linear/linear_model/C23/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C23/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C23/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C23/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C23/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C23/to_sparse_input/Where=linear/linear_model/C23/to_sparse_input/strided_slice_1/stack?linear/linear_model/C23/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C23/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C23/to_sparse_input/unstackUnpack,linear/linear_model/C23/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C23/to_sparse_input/stackPack1linear/linear_model/C23/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C23/to_sparse_input/MulMul7linear/linear_model/C23/to_sparse_input/strided_slice_1-linear/linear_model/C23/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C23/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C23/to_sparse_input/SumSum+linear/linear_model/C23/to_sparse_input/Mul=linear/linear_model/C23/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C23/to_sparse_input/AddAdd5linear/linear_model/C23/to_sparse_input/strided_slice+linear/linear_model/C23/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C23/to_sparse_input/GatherGather/linear/linear_model/C23/to_sparse_input/Reshape+linear/linear_model/C23/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C23/lookupStringToHashBucketFast.linear/linear_model/C23/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C23/Shape/CastCast,linear/linear_model/C23/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C23/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C23/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C23/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C23/strided_sliceStridedSlice"linear/linear_model/C23/Shape/Cast+linear/linear_model/C23/strided_slice/stack-linear/linear_model/C23/strided_slice/stack_1-linear/linear_model/C23/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C23/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C23/Cast/xPack%linear/linear_model/C23/strided_slice linear/linear_model/C23/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C23/CastCastlinear/linear_model/C23/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C23/SparseReshapeSparseReshape-linear/linear_model/C23/to_sparse_input/Where,linear/linear_model/C23/to_sparse_input/Castlinear/linear_model/C23/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C23/SparseReshape/IdentityIdentitylinear/linear_model/C23/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C23/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C23/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C23/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C23/weights/part_0
І
-linear/linear_model/C23/weights/part_0/AssignAssign&linear/linear_model/C23/weights/part_08linear/linear_model/C23/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C23/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C23/weights/part_0/readIdentity&linear/linear_model/C23/weights/part_0*9
_class/
-+loc:@linear/linear_model/C23/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C23/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C23/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C23/weighted_sum/SliceSlice'linear/linear_model/C23/SparseReshape:10linear/linear_model/C23/weighted_sum/Slice/begin/linear/linear_model/C23/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C23/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C23/weighted_sum/ProdProd*linear/linear_model/C23/weighted_sum/Slice*linear/linear_model/C23/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C23/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C23/weighted_sum/GatherGather'linear/linear_model/C23/SparseReshape:13linear/linear_model/C23/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C23/weighted_sum/Cast/xPack)linear/linear_model/C23/weighted_sum/Prod+linear/linear_model/C23/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C23/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C23/SparseReshape'linear/linear_model/C23/SparseReshape:1+linear/linear_model/C23/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C23/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C23/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C23/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C23/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C23/weighted_sum/SparseReshape/Identity3linear/linear_model/C23/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C23/weighted_sum/WhereWhere1linear/linear_model/C23/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C23/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C23/weighted_sum/ReshapeReshape*linear/linear_model/C23/weighted_sum/Where2linear/linear_model/C23/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C23/weighted_sum/Gather_1Gather2linear/linear_model/C23/weighted_sum/SparseReshape,linear/linear_model/C23/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C23/weighted_sum/Gather_2Gather;linear/linear_model/C23/weighted_sum/SparseReshape/Identity,linear/linear_model/C23/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C23/weighted_sum/IdentityIdentity4linear/linear_model/C23/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C23/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C23/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C23/weighted_sum/Gather_1-linear/linear_model/C23/weighted_sum/Gather_2-linear/linear_model/C23/weighted_sum/Identity>linear/linear_model/C23/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C23/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C23/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C23/weights/part_0/readClinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C23/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C23/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C23/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C23/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C23/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C23/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C23/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C23/weighted_sum/ShapeShape<linear/linear_model/C23/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C23/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C23/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C23/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C23/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C23/weighted_sum/Shape8linear/linear_model/C23/weighted_sum/strided_slice/stack:linear/linear_model/C23/weighted_sum/strided_slice/stack_1:linear/linear_model/C23/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C23/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C23/weighted_sum/stackPack,linear/linear_model/C23/weighted_sum/stack/02linear/linear_model/C23/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C23/weighted_sum/TileTile.linear/linear_model/C23/weighted_sum/Reshape_1*linear/linear_model/C23/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C23/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C23/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C23/weighted_sumSelect)linear/linear_model/C23/weighted_sum/Tile/linear/linear_model/C23/weighted_sum/zeros_like<linear/linear_model/C23/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C23/weighted_sum/Cast_1Cast'linear/linear_model/C23/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C23/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C23/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C23/weighted_sum/Slice_1Slice+linear/linear_model/C23/weighted_sum/Cast_12linear/linear_model/C23/weighted_sum/Slice_1/begin1linear/linear_model/C23/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C23/weighted_sum/Shape_1Shape$linear/linear_model/C23/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C23/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C23/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C23/weighted_sum/Slice_2Slice,linear/linear_model/C23/weighted_sum/Shape_12linear/linear_model/C23/weighted_sum/Slice_2/begin1linear/linear_model/C23/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C23/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C23/weighted_sum/concatConcatV2,linear/linear_model/C23/weighted_sum/Slice_1,linear/linear_model/C23/weighted_sum/Slice_20linear/linear_model/C23/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C23/weighted_sum/Reshape_2Reshape$linear/linear_model/C23/weighted_sum+linear/linear_model/C23/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
-linear/linear_model/C24/to_sparse_input/ShapeShapeExpandDims_1*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C24/to_sparse_input/CastCast-linear/linear_model/C24/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C24/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
Ѓ
0linear/linear_model/C24/to_sparse_input/NotEqualNotEqualExpandDims_10linear/linear_model/C24/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C24/to_sparse_input/WhereWhere0linear/linear_model/C24/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C24/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ї
/linear/linear_model/C24/to_sparse_input/ReshapeReshapeExpandDims_15linear/linear_model/C24/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C24/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C24/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C24/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C24/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C24/to_sparse_input/Where;linear/linear_model/C24/to_sparse_input/strided_slice/stack=linear/linear_model/C24/to_sparse_input/strided_slice/stack_1=linear/linear_model/C24/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C24/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C24/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C24/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C24/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C24/to_sparse_input/Where=linear/linear_model/C24/to_sparse_input/strided_slice_1/stack?linear/linear_model/C24/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C24/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C24/to_sparse_input/unstackUnpack,linear/linear_model/C24/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C24/to_sparse_input/stackPack1linear/linear_model/C24/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C24/to_sparse_input/MulMul7linear/linear_model/C24/to_sparse_input/strided_slice_1-linear/linear_model/C24/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C24/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C24/to_sparse_input/SumSum+linear/linear_model/C24/to_sparse_input/Mul=linear/linear_model/C24/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C24/to_sparse_input/AddAdd5linear/linear_model/C24/to_sparse_input/strided_slice+linear/linear_model/C24/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C24/to_sparse_input/GatherGather/linear/linear_model/C24/to_sparse_input/Reshape+linear/linear_model/C24/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C24/lookupStringToHashBucketFast.linear/linear_model/C24/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C24/Shape/CastCast,linear/linear_model/C24/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C24/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C24/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C24/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C24/strided_sliceStridedSlice"linear/linear_model/C24/Shape/Cast+linear/linear_model/C24/strided_slice/stack-linear/linear_model/C24/strided_slice/stack_1-linear/linear_model/C24/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C24/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C24/Cast/xPack%linear/linear_model/C24/strided_slice linear/linear_model/C24/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C24/CastCastlinear/linear_model/C24/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C24/SparseReshapeSparseReshape-linear/linear_model/C24/to_sparse_input/Where,linear/linear_model/C24/to_sparse_input/Castlinear/linear_model/C24/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C24/SparseReshape/IdentityIdentitylinear/linear_model/C24/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C24/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C24/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C24/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C24/weights/part_0
І
-linear/linear_model/C24/weights/part_0/AssignAssign&linear/linear_model/C24/weights/part_08linear/linear_model/C24/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C24/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C24/weights/part_0/readIdentity&linear/linear_model/C24/weights/part_0*9
_class/
-+loc:@linear/linear_model/C24/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C24/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C24/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C24/weighted_sum/SliceSlice'linear/linear_model/C24/SparseReshape:10linear/linear_model/C24/weighted_sum/Slice/begin/linear/linear_model/C24/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C24/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C24/weighted_sum/ProdProd*linear/linear_model/C24/weighted_sum/Slice*linear/linear_model/C24/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C24/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C24/weighted_sum/GatherGather'linear/linear_model/C24/SparseReshape:13linear/linear_model/C24/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C24/weighted_sum/Cast/xPack)linear/linear_model/C24/weighted_sum/Prod+linear/linear_model/C24/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C24/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C24/SparseReshape'linear/linear_model/C24/SparseReshape:1+linear/linear_model/C24/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C24/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C24/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C24/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C24/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C24/weighted_sum/SparseReshape/Identity3linear/linear_model/C24/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C24/weighted_sum/WhereWhere1linear/linear_model/C24/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C24/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C24/weighted_sum/ReshapeReshape*linear/linear_model/C24/weighted_sum/Where2linear/linear_model/C24/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C24/weighted_sum/Gather_1Gather2linear/linear_model/C24/weighted_sum/SparseReshape,linear/linear_model/C24/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C24/weighted_sum/Gather_2Gather;linear/linear_model/C24/weighted_sum/SparseReshape/Identity,linear/linear_model/C24/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C24/weighted_sum/IdentityIdentity4linear/linear_model/C24/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C24/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C24/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C24/weighted_sum/Gather_1-linear/linear_model/C24/weighted_sum/Gather_2-linear/linear_model/C24/weighted_sum/Identity>linear/linear_model/C24/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C24/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C24/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C24/weights/part_0/readClinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C24/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C24/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C24/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C24/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C24/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C24/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C24/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C24/weighted_sum/ShapeShape<linear/linear_model/C24/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C24/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C24/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C24/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C24/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C24/weighted_sum/Shape8linear/linear_model/C24/weighted_sum/strided_slice/stack:linear/linear_model/C24/weighted_sum/strided_slice/stack_1:linear/linear_model/C24/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C24/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C24/weighted_sum/stackPack,linear/linear_model/C24/weighted_sum/stack/02linear/linear_model/C24/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C24/weighted_sum/TileTile.linear/linear_model/C24/weighted_sum/Reshape_1*linear/linear_model/C24/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C24/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C24/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C24/weighted_sumSelect)linear/linear_model/C24/weighted_sum/Tile/linear/linear_model/C24/weighted_sum/zeros_like<linear/linear_model/C24/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C24/weighted_sum/Cast_1Cast'linear/linear_model/C24/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C24/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C24/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C24/weighted_sum/Slice_1Slice+linear/linear_model/C24/weighted_sum/Cast_12linear/linear_model/C24/weighted_sum/Slice_1/begin1linear/linear_model/C24/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C24/weighted_sum/Shape_1Shape$linear/linear_model/C24/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C24/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C24/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C24/weighted_sum/Slice_2Slice,linear/linear_model/C24/weighted_sum/Shape_12linear/linear_model/C24/weighted_sum/Slice_2/begin1linear/linear_model/C24/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C24/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C24/weighted_sum/concatConcatV2,linear/linear_model/C24/weighted_sum/Slice_1,linear/linear_model/C24/weighted_sum/Slice_20linear/linear_model/C24/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C24/weighted_sum/Reshape_2Reshape$linear/linear_model/C24/weighted_sum+linear/linear_model/C24/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C25/to_sparse_input/ShapeShapeExpandDims_21*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C25/to_sparse_input/CastCast-linear/linear_model/C25/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C25/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C25/to_sparse_input/NotEqualNotEqualExpandDims_210linear/linear_model/C25/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C25/to_sparse_input/WhereWhere0linear/linear_model/C25/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C25/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C25/to_sparse_input/ReshapeReshapeExpandDims_215linear/linear_model/C25/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C25/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C25/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C25/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C25/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C25/to_sparse_input/Where;linear/linear_model/C25/to_sparse_input/strided_slice/stack=linear/linear_model/C25/to_sparse_input/strided_slice/stack_1=linear/linear_model/C25/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C25/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C25/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C25/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C25/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C25/to_sparse_input/Where=linear/linear_model/C25/to_sparse_input/strided_slice_1/stack?linear/linear_model/C25/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C25/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C25/to_sparse_input/unstackUnpack,linear/linear_model/C25/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C25/to_sparse_input/stackPack1linear/linear_model/C25/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C25/to_sparse_input/MulMul7linear/linear_model/C25/to_sparse_input/strided_slice_1-linear/linear_model/C25/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C25/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C25/to_sparse_input/SumSum+linear/linear_model/C25/to_sparse_input/Mul=linear/linear_model/C25/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C25/to_sparse_input/AddAdd5linear/linear_model/C25/to_sparse_input/strided_slice+linear/linear_model/C25/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C25/to_sparse_input/GatherGather/linear/linear_model/C25/to_sparse_input/Reshape+linear/linear_model/C25/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C25/lookupStringToHashBucketFast.linear/linear_model/C25/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C25/Shape/CastCast,linear/linear_model/C25/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C25/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C25/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C25/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C25/strided_sliceStridedSlice"linear/linear_model/C25/Shape/Cast+linear/linear_model/C25/strided_slice/stack-linear/linear_model/C25/strided_slice/stack_1-linear/linear_model/C25/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C25/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C25/Cast/xPack%linear/linear_model/C25/strided_slice linear/linear_model/C25/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C25/CastCastlinear/linear_model/C25/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C25/SparseReshapeSparseReshape-linear/linear_model/C25/to_sparse_input/Where,linear/linear_model/C25/to_sparse_input/Castlinear/linear_model/C25/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C25/SparseReshape/IdentityIdentitylinear/linear_model/C25/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C25/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C25/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C25/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C25/weights/part_0
І
-linear/linear_model/C25/weights/part_0/AssignAssign&linear/linear_model/C25/weights/part_08linear/linear_model/C25/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C25/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C25/weights/part_0/readIdentity&linear/linear_model/C25/weights/part_0*9
_class/
-+loc:@linear/linear_model/C25/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C25/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C25/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C25/weighted_sum/SliceSlice'linear/linear_model/C25/SparseReshape:10linear/linear_model/C25/weighted_sum/Slice/begin/linear/linear_model/C25/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C25/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C25/weighted_sum/ProdProd*linear/linear_model/C25/weighted_sum/Slice*linear/linear_model/C25/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C25/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C25/weighted_sum/GatherGather'linear/linear_model/C25/SparseReshape:13linear/linear_model/C25/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C25/weighted_sum/Cast/xPack)linear/linear_model/C25/weighted_sum/Prod+linear/linear_model/C25/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C25/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C25/SparseReshape'linear/linear_model/C25/SparseReshape:1+linear/linear_model/C25/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C25/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C25/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C25/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C25/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C25/weighted_sum/SparseReshape/Identity3linear/linear_model/C25/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C25/weighted_sum/WhereWhere1linear/linear_model/C25/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C25/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C25/weighted_sum/ReshapeReshape*linear/linear_model/C25/weighted_sum/Where2linear/linear_model/C25/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C25/weighted_sum/Gather_1Gather2linear/linear_model/C25/weighted_sum/SparseReshape,linear/linear_model/C25/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C25/weighted_sum/Gather_2Gather;linear/linear_model/C25/weighted_sum/SparseReshape/Identity,linear/linear_model/C25/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C25/weighted_sum/IdentityIdentity4linear/linear_model/C25/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C25/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C25/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C25/weighted_sum/Gather_1-linear/linear_model/C25/weighted_sum/Gather_2-linear/linear_model/C25/weighted_sum/Identity>linear/linear_model/C25/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C25/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C25/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C25/weights/part_0/readClinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C25/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C25/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C25/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C25/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C25/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C25/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C25/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C25/weighted_sum/ShapeShape<linear/linear_model/C25/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C25/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C25/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C25/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C25/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C25/weighted_sum/Shape8linear/linear_model/C25/weighted_sum/strided_slice/stack:linear/linear_model/C25/weighted_sum/strided_slice/stack_1:linear/linear_model/C25/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C25/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C25/weighted_sum/stackPack,linear/linear_model/C25/weighted_sum/stack/02linear/linear_model/C25/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C25/weighted_sum/TileTile.linear/linear_model/C25/weighted_sum/Reshape_1*linear/linear_model/C25/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C25/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C25/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C25/weighted_sumSelect)linear/linear_model/C25/weighted_sum/Tile/linear/linear_model/C25/weighted_sum/zeros_like<linear/linear_model/C25/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C25/weighted_sum/Cast_1Cast'linear/linear_model/C25/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C25/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C25/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C25/weighted_sum/Slice_1Slice+linear/linear_model/C25/weighted_sum/Cast_12linear/linear_model/C25/weighted_sum/Slice_1/begin1linear/linear_model/C25/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C25/weighted_sum/Shape_1Shape$linear/linear_model/C25/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C25/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C25/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C25/weighted_sum/Slice_2Slice,linear/linear_model/C25/weighted_sum/Shape_12linear/linear_model/C25/weighted_sum/Slice_2/begin1linear/linear_model/C25/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C25/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C25/weighted_sum/concatConcatV2,linear/linear_model/C25/weighted_sum/Slice_1,linear/linear_model/C25/weighted_sum/Slice_20linear/linear_model/C25/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C25/weighted_sum/Reshape_2Reshape$linear/linear_model/C25/weighted_sum+linear/linear_model/C25/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
z
-linear/linear_model/C26/to_sparse_input/ShapeShapeExpandDims_25*
out_type0*
_output_shapes
:*
T0
Ч
,linear/linear_model/C26/to_sparse_input/CastCast-linear/linear_model/C26/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
q
0linear/linear_model/C26/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ѓ
0linear/linear_model/C26/to_sparse_input/NotEqualNotEqualExpandDims_250linear/linear_model/C26/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
С
-linear/linear_model/C26/to_sparse_input/WhereWhere0linear/linear_model/C26/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
И
5linear/linear_model/C26/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Љ
/linear/linear_model/C26/to_sparse_input/ReshapeReshapeExpandDims_255linear/linear_model/C26/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
М
;linear/linear_model/C26/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C26/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
=linear/linear_model/C26/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ќ
5linear/linear_model/C26/to_sparse_input/strided_sliceStridedSlice-linear/linear_model/C26/to_sparse_input/Where;linear/linear_model/C26/to_sparse_input/strided_slice/stack=linear/linear_model/C26/to_sparse_input/strided_slice/stack_1=linear/linear_model/C26/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
О
=linear/linear_model/C26/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C26/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Р
?linear/linear_model/C26/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Џ
7linear/linear_model/C26/to_sparse_input/strided_slice_1StridedSlice-linear/linear_model/C26/to_sparse_input/Where=linear/linear_model/C26/to_sparse_input/strided_slice_1/stack?linear/linear_model/C26/to_sparse_input/strided_slice_1/stack_1?linear/linear_model/C26/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
°
/linear/linear_model/C26/to_sparse_input/unstackUnpack,linear/linear_model/C26/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
Ґ
-linear/linear_model/C26/to_sparse_input/stackPack1linear/linear_model/C26/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
ћ
+linear/linear_model/C26/to_sparse_input/MulMul7linear/linear_model/C26/to_sparse_input/strided_slice_1-linear/linear_model/C26/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
З
=linear/linear_model/C26/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
й
+linear/linear_model/C26/to_sparse_input/SumSum+linear/linear_model/C26/to_sparse_input/Mul=linear/linear_model/C26/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
ƒ
+linear/linear_model/C26/to_sparse_input/AddAdd5linear/linear_model/C26/to_sparse_input/strided_slice+linear/linear_model/C26/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
т
.linear/linear_model/C26/to_sparse_input/GatherGather/linear/linear_model/C26/to_sparse_input/Reshape+linear/linear_model/C26/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
°
linear/linear_model/C26/lookupStringToHashBucketFast.linear/linear_model/C26/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
М
"linear/linear_model/C26/Shape/CastCast,linear/linear_model/C26/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
u
+linear/linear_model/C26/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
w
-linear/linear_model/C26/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-linear/linear_model/C26/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ц
%linear/linear_model/C26/strided_sliceStridedSlice"linear/linear_model/C26/Shape/Cast+linear/linear_model/C26/strided_slice/stack-linear/linear_model/C26/strided_slice/stack_1-linear/linear_model/C26/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
k
 linear/linear_model/C26/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
©
linear/linear_model/C26/Cast/xPack%linear/linear_model/C26/strided_slice linear/linear_model/C26/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
x
linear/linear_model/C26/CastCastlinear/linear_model/C26/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
а
%linear/linear_model/C26/SparseReshapeSparseReshape-linear/linear_model/C26/to_sparse_input/Where,linear/linear_model/C26/to_sparse_input/Castlinear/linear_model/C26/Cast*-
_output_shapes
:€€€€€€€€€:
И
.linear/linear_model/C26/SparseReshape/IdentityIdentitylinear/linear_model/C26/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
 
8linear/linear_model/C26/weights/part_0/Initializer/zerosConst*
valueB	и*    *9
_class/
-+loc:@linear/linear_model/C26/weights/part_0*
dtype0*
_output_shapes
:	и
„
&linear/linear_model/C26/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*9
_class/
-+loc:@linear/linear_model/C26/weights/part_0
І
-linear/linear_model/C26/weights/part_0/AssignAssign&linear/linear_model/C26/weights/part_08linear/linear_model/C26/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/C26/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
ƒ
+linear/linear_model/C26/weights/part_0/readIdentity&linear/linear_model/C26/weights/part_0*9
_class/
-+loc:@linear/linear_model/C26/weights/part_0*
_output_shapes
:	и*
T0
z
0linear/linear_model/C26/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
y
/linear/linear_model/C26/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
*linear/linear_model/C26/weighted_sum/SliceSlice'linear/linear_model/C26/SparseReshape:10linear/linear_model/C26/weighted_sum/Slice/begin/linear/linear_model/C26/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
t
*linear/linear_model/C26/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
«
)linear/linear_model/C26/weighted_sum/ProdProd*linear/linear_model/C26/weighted_sum/Slice*linear/linear_model/C26/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
u
3linear/linear_model/C26/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
в
+linear/linear_model/C26/weighted_sum/GatherGather'linear/linear_model/C26/SparseReshape:13linear/linear_model/C26/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
≈
+linear/linear_model/C26/weighted_sum/Cast/xPack)linear/linear_model/C26/weighted_sum/Prod+linear/linear_model/C26/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
п
2linear/linear_model/C26/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/C26/SparseReshape'linear/linear_model/C26/SparseReshape:1+linear/linear_model/C26/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/C26/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/C26/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
u
3linear/linear_model/C26/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
б
1linear/linear_model/C26/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/C26/weighted_sum/SparseReshape/Identity3linear/linear_model/C26/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
П
*linear/linear_model/C26/weighted_sum/WhereWhere1linear/linear_model/C26/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/C26/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
”
,linear/linear_model/C26/weighted_sum/ReshapeReshape*linear/linear_model/C26/weighted_sum/Where2linear/linear_model/C26/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
щ
-linear/linear_model/C26/weighted_sum/Gather_1Gather2linear/linear_model/C26/weighted_sum/SparseReshape,linear/linear_model/C26/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ю
-linear/linear_model/C26/weighted_sum/Gather_2Gather;linear/linear_model/C26/weighted_sum/SparseReshape/Identity,linear/linear_model/C26/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ф
-linear/linear_model/C26/weighted_sum/IdentityIdentity4linear/linear_model/C26/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/C26/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
П
Llinear/linear_model/C26/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/C26/weighted_sum/Gather_1-linear/linear_model/C26/weighted_sum/Gather_2-linear/linear_model/C26/weighted_sum/Identity>linear/linear_model/C26/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
£
Rlinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
Jlinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/C26/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
“
Alinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
й
Clinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/C26/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
д
Mlinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/C26/weights/part_0/readClinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*9
_class/
-+loc:@linear/linear_model/C26/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
з
<linear/linear_model/C26/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/C26/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Е
4linear/linear_model/C26/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
€
.linear/linear_model/C26/weighted_sum/Reshape_1ReshapeNlinear/linear_model/C26/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/C26/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

¶
*linear/linear_model/C26/weighted_sum/ShapeShape<linear/linear_model/C26/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/C26/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C26/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/C26/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≤
2linear/linear_model/C26/weighted_sum/strided_sliceStridedSlice*linear/linear_model/C26/weighted_sum/Shape8linear/linear_model/C26/weighted_sum/strided_slice/stack:linear/linear_model/C26/weighted_sum/strided_slice/stack_1:linear/linear_model/C26/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
n
,linear/linear_model/C26/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ќ
*linear/linear_model/C26/weighted_sum/stackPack,linear/linear_model/C26/weighted_sum/stack/02linear/linear_model/C26/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
Џ
)linear/linear_model/C26/weighted_sum/TileTile.linear/linear_model/C26/weighted_sum/Reshape_1*linear/linear_model/C26/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/C26/weighted_sum/zeros_like	ZerosLike<linear/linear_model/C26/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
$linear/linear_model/C26/weighted_sumSelect)linear/linear_model/C26/weighted_sum/Tile/linear/linear_model/C26/weighted_sum/zeros_like<linear/linear_model/C26/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/C26/weighted_sum/Cast_1Cast'linear/linear_model/C26/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
|
2linear/linear_model/C26/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/C26/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ы
,linear/linear_model/C26/weighted_sum/Slice_1Slice+linear/linear_model/C26/weighted_sum/Cast_12linear/linear_model/C26/weighted_sum/Slice_1/begin1linear/linear_model/C26/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
Р
,linear/linear_model/C26/weighted_sum/Shape_1Shape$linear/linear_model/C26/weighted_sum*
out_type0*
_output_shapes
:*
T0
|
2linear/linear_model/C26/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Д
1linear/linear_model/C26/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ь
,linear/linear_model/C26/weighted_sum/Slice_2Slice,linear/linear_model/C26/weighted_sum/Shape_12linear/linear_model/C26/weighted_sum/Slice_2/begin1linear/linear_model/C26/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
r
0linear/linear_model/C26/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
€
+linear/linear_model/C26/weighted_sum/concatConcatV2,linear/linear_model/C26/weighted_sum/Slice_1,linear/linear_model/C26/weighted_sum/Slice_20linear/linear_model/C26/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
ћ
.linear/linear_model/C26/weighted_sum/Reshape_2Reshape$linear/linear_model/C26/weighted_sum+linear/linear_model/C26/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
,linear/linear_model/C3/to_sparse_input/ShapeShapeExpandDims_18*
out_type0*
_output_shapes
:*
T0
Х
+linear/linear_model/C3/to_sparse_input/CastCast,linear/linear_model/C3/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
p
/linear/linear_model/C3/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
≠
/linear/linear_model/C3/to_sparse_input/NotEqualNotEqualExpandDims_18/linear/linear_model/C3/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
П
,linear/linear_model/C3/to_sparse_input/WhereWhere/linear/linear_model/C3/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
З
4linear/linear_model/C3/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ї
.linear/linear_model/C3/to_sparse_input/ReshapeReshapeExpandDims_184linear/linear_model/C3/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Л
:linear/linear_model/C3/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C3/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C3/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
…
4linear/linear_model/C3/to_sparse_input/strided_sliceStridedSlice,linear/linear_model/C3/to_sparse_input/Where:linear/linear_model/C3/to_sparse_input/strided_slice/stack<linear/linear_model/C3/to_sparse_input/strided_slice/stack_1<linear/linear_model/C3/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Н
<linear/linear_model/C3/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
П
>linear/linear_model/C3/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
П
>linear/linear_model/C3/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
6linear/linear_model/C3/to_sparse_input/strided_slice_1StridedSlice,linear/linear_model/C3/to_sparse_input/Where<linear/linear_model/C3/to_sparse_input/strided_slice_1/stack>linear/linear_model/C3/to_sparse_input/strided_slice_1/stack_1>linear/linear_model/C3/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
Я
.linear/linear_model/C3/to_sparse_input/unstackUnpack+linear/linear_model/C3/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
†
,linear/linear_model/C3/to_sparse_input/stackPack0linear/linear_model/C3/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
…
*linear/linear_model/C3/to_sparse_input/MulMul6linear/linear_model/C3/to_sparse_input/strided_slice_1,linear/linear_model/C3/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Ж
<linear/linear_model/C3/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ж
*linear/linear_model/C3/to_sparse_input/SumSum*linear/linear_model/C3/to_sparse_input/Mul<linear/linear_model/C3/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
Ѕ
*linear/linear_model/C3/to_sparse_input/AddAdd4linear/linear_model/C3/to_sparse_input/strided_slice*linear/linear_model/C3/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
п
-linear/linear_model/C3/to_sparse_input/GatherGather.linear/linear_model/C3/to_sparse_input/Reshape*linear/linear_model/C3/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Я
linear/linear_model/C3/lookupStringToHashBucketFast-linear/linear_model/C3/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
К
!linear/linear_model/C3/Shape/CastCast+linear/linear_model/C3/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
t
*linear/linear_model/C3/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
v
,linear/linear_model/C3/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
v
,linear/linear_model/C3/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
$linear/linear_model/C3/strided_sliceStridedSlice!linear/linear_model/C3/Shape/Cast*linear/linear_model/C3/strided_slice/stack,linear/linear_model/C3/strided_slice/stack_1,linear/linear_model/C3/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
j
linear/linear_model/C3/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
¶
linear/linear_model/C3/Cast/xPack$linear/linear_model/C3/strided_slicelinear/linear_model/C3/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
v
linear/linear_model/C3/CastCastlinear/linear_model/C3/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
№
$linear/linear_model/C3/SparseReshapeSparseReshape,linear/linear_model/C3/to_sparse_input/Where+linear/linear_model/C3/to_sparse_input/Castlinear/linear_model/C3/Cast*-
_output_shapes
:€€€€€€€€€:
Ж
-linear/linear_model/C3/SparseReshape/IdentityIdentitylinear/linear_model/C3/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
»
7linear/linear_model/C3/weights/part_0/Initializer/zerosConst*
valueB	и*    *8
_class.
,*loc:@linear/linear_model/C3/weights/part_0*
dtype0*
_output_shapes
:	и
’
%linear/linear_model/C3/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*8
_class.
,*loc:@linear/linear_model/C3/weights/part_0
£
,linear/linear_model/C3/weights/part_0/AssignAssign%linear/linear_model/C3/weights/part_07linear/linear_model/C3/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/C3/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ѕ
*linear/linear_model/C3/weights/part_0/readIdentity%linear/linear_model/C3/weights/part_0*8
_class.
,*loc:@linear/linear_model/C3/weights/part_0*
_output_shapes
:	и*
T0
y
/linear/linear_model/C3/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
x
.linear/linear_model/C3/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
н
)linear/linear_model/C3/weighted_sum/SliceSlice&linear/linear_model/C3/SparseReshape:1/linear/linear_model/C3/weighted_sum/Slice/begin.linear/linear_model/C3/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
s
)linear/linear_model/C3/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ƒ
(linear/linear_model/C3/weighted_sum/ProdProd)linear/linear_model/C3/weighted_sum/Slice)linear/linear_model/C3/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
t
2linear/linear_model/C3/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
я
*linear/linear_model/C3/weighted_sum/GatherGather&linear/linear_model/C3/SparseReshape:12linear/linear_model/C3/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
¬
*linear/linear_model/C3/weighted_sum/Cast/xPack(linear/linear_model/C3/weighted_sum/Prod*linear/linear_model/C3/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
л
1linear/linear_model/C3/weighted_sum/SparseReshapeSparseReshape$linear/linear_model/C3/SparseReshape&linear/linear_model/C3/SparseReshape:1*linear/linear_model/C3/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
£
:linear/linear_model/C3/weighted_sum/SparseReshape/IdentityIdentity-linear/linear_model/C3/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
t
2linear/linear_model/C3/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ё
0linear/linear_model/C3/weighted_sum/GreaterEqualGreaterEqual:linear/linear_model/C3/weighted_sum/SparseReshape/Identity2linear/linear_model/C3/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Н
)linear/linear_model/C3/weighted_sum/WhereWhere0linear/linear_model/C3/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/C3/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
–
+linear/linear_model/C3/weighted_sum/ReshapeReshape)linear/linear_model/C3/weighted_sum/Where1linear/linear_model/C3/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
ц
,linear/linear_model/C3/weighted_sum/Gather_1Gather1linear/linear_model/C3/weighted_sum/SparseReshape+linear/linear_model/C3/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ы
,linear/linear_model/C3/weighted_sum/Gather_2Gather:linear/linear_model/C3/weighted_sum/SparseReshape/Identity+linear/linear_model/C3/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Т
,linear/linear_model/C3/weighted_sum/IdentityIdentity3linear/linear_model/C3/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear_model/C3/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
К
Klinear/linear_model/C3/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear_model/C3/weighted_sum/Gather_1,linear/linear_model/C3/weighted_sum/Gather_2,linear/linear_model/C3/weighted_sum/Identity=linear/linear_model/C3/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
†
Olinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Љ
Ilinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear_model/C3/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/strided_slice/stackQlinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
–
@linear/linear_model/C3/weighted_sum/embedding_lookup_sparse/CastCastIlinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
з
Blinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/UniqueUniqueMlinear/linear_model/C3/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
а
Llinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/embedding_lookupGather*linear/linear_model/C3/weights/part_0/readBlinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*8
_class.
,*loc:@linear/linear_model/C3/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
г
;linear/linear_model/C3/weighted_sum/embedding_lookup_sparseSparseSegmentSumLlinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/embedding_lookupDlinear/linear_model/C3/weighted_sum/embedding_lookup_sparse/Unique:1@linear/linear_model/C3/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Д
3linear/linear_model/C3/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
ь
-linear/linear_model/C3/weighted_sum/Reshape_1ReshapeMlinear/linear_model/C3/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear_model/C3/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

§
)linear/linear_model/C3/weighted_sum/ShapeShape;linear/linear_model/C3/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Б
7linear/linear_model/C3/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C3/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C3/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
1linear/linear_model/C3/weighted_sum/strided_sliceStridedSlice)linear/linear_model/C3/weighted_sum/Shape7linear/linear_model/C3/weighted_sum/strided_slice/stack9linear/linear_model/C3/weighted_sum/strided_slice/stack_19linear/linear_model/C3/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
m
+linear/linear_model/C3/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ћ
)linear/linear_model/C3/weighted_sum/stackPack+linear/linear_model/C3/weighted_sum/stack/01linear/linear_model/C3/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
„
(linear/linear_model/C3/weighted_sum/TileTile-linear/linear_model/C3/weighted_sum/Reshape_1)linear/linear_model/C3/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

™
.linear/linear_model/C3/weighted_sum/zeros_like	ZerosLike;linear/linear_model/C3/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ц
#linear/linear_model/C3/weighted_sumSelect(linear/linear_model/C3/weighted_sum/Tile.linear/linear_model/C3/weighted_sum/zeros_like;linear/linear_model/C3/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
О
*linear/linear_model/C3/weighted_sum/Cast_1Cast&linear/linear_model/C3/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
{
1linear/linear_model/C3/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
z
0linear/linear_model/C3/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
+linear/linear_model/C3/weighted_sum/Slice_1Slice*linear/linear_model/C3/weighted_sum/Cast_11linear/linear_model/C3/weighted_sum/Slice_1/begin0linear/linear_model/C3/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
О
+linear/linear_model/C3/weighted_sum/Shape_1Shape#linear/linear_model/C3/weighted_sum*
out_type0*
_output_shapes
:*
T0
{
1linear/linear_model/C3/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Г
0linear/linear_model/C3/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ш
+linear/linear_model/C3/weighted_sum/Slice_2Slice+linear/linear_model/C3/weighted_sum/Shape_11linear/linear_model/C3/weighted_sum/Slice_2/begin0linear/linear_model/C3/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
q
/linear/linear_model/C3/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ы
*linear/linear_model/C3/weighted_sum/concatConcatV2+linear/linear_model/C3/weighted_sum/Slice_1+linear/linear_model/C3/weighted_sum/Slice_2/linear/linear_model/C3/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
…
-linear/linear_model/C3/weighted_sum/Reshape_2Reshape#linear/linear_model/C3/weighted_sum*linear/linear_model/C3/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
,linear/linear_model/C4/to_sparse_input/ShapeShapeExpandDims_31*
out_type0*
_output_shapes
:*
T0
Х
+linear/linear_model/C4/to_sparse_input/CastCast,linear/linear_model/C4/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
p
/linear/linear_model/C4/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
≠
/linear/linear_model/C4/to_sparse_input/NotEqualNotEqualExpandDims_31/linear/linear_model/C4/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
П
,linear/linear_model/C4/to_sparse_input/WhereWhere/linear/linear_model/C4/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
З
4linear/linear_model/C4/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ї
.linear/linear_model/C4/to_sparse_input/ReshapeReshapeExpandDims_314linear/linear_model/C4/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Л
:linear/linear_model/C4/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C4/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C4/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
…
4linear/linear_model/C4/to_sparse_input/strided_sliceStridedSlice,linear/linear_model/C4/to_sparse_input/Where:linear/linear_model/C4/to_sparse_input/strided_slice/stack<linear/linear_model/C4/to_sparse_input/strided_slice/stack_1<linear/linear_model/C4/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Н
<linear/linear_model/C4/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
П
>linear/linear_model/C4/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
П
>linear/linear_model/C4/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
6linear/linear_model/C4/to_sparse_input/strided_slice_1StridedSlice,linear/linear_model/C4/to_sparse_input/Where<linear/linear_model/C4/to_sparse_input/strided_slice_1/stack>linear/linear_model/C4/to_sparse_input/strided_slice_1/stack_1>linear/linear_model/C4/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
Я
.linear/linear_model/C4/to_sparse_input/unstackUnpack+linear/linear_model/C4/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
†
,linear/linear_model/C4/to_sparse_input/stackPack0linear/linear_model/C4/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
…
*linear/linear_model/C4/to_sparse_input/MulMul6linear/linear_model/C4/to_sparse_input/strided_slice_1,linear/linear_model/C4/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Ж
<linear/linear_model/C4/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ж
*linear/linear_model/C4/to_sparse_input/SumSum*linear/linear_model/C4/to_sparse_input/Mul<linear/linear_model/C4/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
Ѕ
*linear/linear_model/C4/to_sparse_input/AddAdd4linear/linear_model/C4/to_sparse_input/strided_slice*linear/linear_model/C4/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
п
-linear/linear_model/C4/to_sparse_input/GatherGather.linear/linear_model/C4/to_sparse_input/Reshape*linear/linear_model/C4/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Я
linear/linear_model/C4/lookupStringToHashBucketFast-linear/linear_model/C4/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
К
!linear/linear_model/C4/Shape/CastCast+linear/linear_model/C4/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
t
*linear/linear_model/C4/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
v
,linear/linear_model/C4/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
v
,linear/linear_model/C4/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
$linear/linear_model/C4/strided_sliceStridedSlice!linear/linear_model/C4/Shape/Cast*linear/linear_model/C4/strided_slice/stack,linear/linear_model/C4/strided_slice/stack_1,linear/linear_model/C4/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
j
linear/linear_model/C4/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
¶
linear/linear_model/C4/Cast/xPack$linear/linear_model/C4/strided_slicelinear/linear_model/C4/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
v
linear/linear_model/C4/CastCastlinear/linear_model/C4/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
№
$linear/linear_model/C4/SparseReshapeSparseReshape,linear/linear_model/C4/to_sparse_input/Where+linear/linear_model/C4/to_sparse_input/Castlinear/linear_model/C4/Cast*-
_output_shapes
:€€€€€€€€€:
Ж
-linear/linear_model/C4/SparseReshape/IdentityIdentitylinear/linear_model/C4/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
»
7linear/linear_model/C4/weights/part_0/Initializer/zerosConst*
valueB	и*    *8
_class.
,*loc:@linear/linear_model/C4/weights/part_0*
dtype0*
_output_shapes
:	и
’
%linear/linear_model/C4/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*8
_class.
,*loc:@linear/linear_model/C4/weights/part_0
£
,linear/linear_model/C4/weights/part_0/AssignAssign%linear/linear_model/C4/weights/part_07linear/linear_model/C4/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/C4/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ѕ
*linear/linear_model/C4/weights/part_0/readIdentity%linear/linear_model/C4/weights/part_0*8
_class.
,*loc:@linear/linear_model/C4/weights/part_0*
_output_shapes
:	и*
T0
y
/linear/linear_model/C4/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
x
.linear/linear_model/C4/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
н
)linear/linear_model/C4/weighted_sum/SliceSlice&linear/linear_model/C4/SparseReshape:1/linear/linear_model/C4/weighted_sum/Slice/begin.linear/linear_model/C4/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
s
)linear/linear_model/C4/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ƒ
(linear/linear_model/C4/weighted_sum/ProdProd)linear/linear_model/C4/weighted_sum/Slice)linear/linear_model/C4/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
t
2linear/linear_model/C4/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
я
*linear/linear_model/C4/weighted_sum/GatherGather&linear/linear_model/C4/SparseReshape:12linear/linear_model/C4/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
¬
*linear/linear_model/C4/weighted_sum/Cast/xPack(linear/linear_model/C4/weighted_sum/Prod*linear/linear_model/C4/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
л
1linear/linear_model/C4/weighted_sum/SparseReshapeSparseReshape$linear/linear_model/C4/SparseReshape&linear/linear_model/C4/SparseReshape:1*linear/linear_model/C4/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
£
:linear/linear_model/C4/weighted_sum/SparseReshape/IdentityIdentity-linear/linear_model/C4/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
t
2linear/linear_model/C4/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ё
0linear/linear_model/C4/weighted_sum/GreaterEqualGreaterEqual:linear/linear_model/C4/weighted_sum/SparseReshape/Identity2linear/linear_model/C4/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Н
)linear/linear_model/C4/weighted_sum/WhereWhere0linear/linear_model/C4/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/C4/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
–
+linear/linear_model/C4/weighted_sum/ReshapeReshape)linear/linear_model/C4/weighted_sum/Where1linear/linear_model/C4/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
ц
,linear/linear_model/C4/weighted_sum/Gather_1Gather1linear/linear_model/C4/weighted_sum/SparseReshape+linear/linear_model/C4/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ы
,linear/linear_model/C4/weighted_sum/Gather_2Gather:linear/linear_model/C4/weighted_sum/SparseReshape/Identity+linear/linear_model/C4/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Т
,linear/linear_model/C4/weighted_sum/IdentityIdentity3linear/linear_model/C4/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear_model/C4/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
К
Klinear/linear_model/C4/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear_model/C4/weighted_sum/Gather_1,linear/linear_model/C4/weighted_sum/Gather_2,linear/linear_model/C4/weighted_sum/Identity=linear/linear_model/C4/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
†
Olinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Љ
Ilinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear_model/C4/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/strided_slice/stackQlinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
–
@linear/linear_model/C4/weighted_sum/embedding_lookup_sparse/CastCastIlinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
з
Blinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/UniqueUniqueMlinear/linear_model/C4/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
а
Llinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/embedding_lookupGather*linear/linear_model/C4/weights/part_0/readBlinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*8
_class.
,*loc:@linear/linear_model/C4/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
г
;linear/linear_model/C4/weighted_sum/embedding_lookup_sparseSparseSegmentSumLlinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/embedding_lookupDlinear/linear_model/C4/weighted_sum/embedding_lookup_sparse/Unique:1@linear/linear_model/C4/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Д
3linear/linear_model/C4/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
ь
-linear/linear_model/C4/weighted_sum/Reshape_1ReshapeMlinear/linear_model/C4/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear_model/C4/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

§
)linear/linear_model/C4/weighted_sum/ShapeShape;linear/linear_model/C4/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Б
7linear/linear_model/C4/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C4/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C4/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
1linear/linear_model/C4/weighted_sum/strided_sliceStridedSlice)linear/linear_model/C4/weighted_sum/Shape7linear/linear_model/C4/weighted_sum/strided_slice/stack9linear/linear_model/C4/weighted_sum/strided_slice/stack_19linear/linear_model/C4/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
m
+linear/linear_model/C4/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ћ
)linear/linear_model/C4/weighted_sum/stackPack+linear/linear_model/C4/weighted_sum/stack/01linear/linear_model/C4/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
„
(linear/linear_model/C4/weighted_sum/TileTile-linear/linear_model/C4/weighted_sum/Reshape_1)linear/linear_model/C4/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

™
.linear/linear_model/C4/weighted_sum/zeros_like	ZerosLike;linear/linear_model/C4/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ц
#linear/linear_model/C4/weighted_sumSelect(linear/linear_model/C4/weighted_sum/Tile.linear/linear_model/C4/weighted_sum/zeros_like;linear/linear_model/C4/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
О
*linear/linear_model/C4/weighted_sum/Cast_1Cast&linear/linear_model/C4/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
{
1linear/linear_model/C4/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
z
0linear/linear_model/C4/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
+linear/linear_model/C4/weighted_sum/Slice_1Slice*linear/linear_model/C4/weighted_sum/Cast_11linear/linear_model/C4/weighted_sum/Slice_1/begin0linear/linear_model/C4/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
О
+linear/linear_model/C4/weighted_sum/Shape_1Shape#linear/linear_model/C4/weighted_sum*
out_type0*
_output_shapes
:*
T0
{
1linear/linear_model/C4/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Г
0linear/linear_model/C4/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ш
+linear/linear_model/C4/weighted_sum/Slice_2Slice+linear/linear_model/C4/weighted_sum/Shape_11linear/linear_model/C4/weighted_sum/Slice_2/begin0linear/linear_model/C4/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
q
/linear/linear_model/C4/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ы
*linear/linear_model/C4/weighted_sum/concatConcatV2+linear/linear_model/C4/weighted_sum/Slice_1+linear/linear_model/C4/weighted_sum/Slice_2/linear/linear_model/C4/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
…
-linear/linear_model/C4/weighted_sum/Reshape_2Reshape#linear/linear_model/C4/weighted_sum*linear/linear_model/C4/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
x
,linear/linear_model/C5/to_sparse_input/ShapeShapeExpandDims_6*
out_type0*
_output_shapes
:*
T0
Х
+linear/linear_model/C5/to_sparse_input/CastCast,linear/linear_model/C5/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
p
/linear/linear_model/C5/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ђ
/linear/linear_model/C5/to_sparse_input/NotEqualNotEqualExpandDims_6/linear/linear_model/C5/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
П
,linear/linear_model/C5/to_sparse_input/WhereWhere/linear/linear_model/C5/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
З
4linear/linear_model/C5/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
є
.linear/linear_model/C5/to_sparse_input/ReshapeReshapeExpandDims_64linear/linear_model/C5/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Л
:linear/linear_model/C5/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C5/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C5/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
…
4linear/linear_model/C5/to_sparse_input/strided_sliceStridedSlice,linear/linear_model/C5/to_sparse_input/Where:linear/linear_model/C5/to_sparse_input/strided_slice/stack<linear/linear_model/C5/to_sparse_input/strided_slice/stack_1<linear/linear_model/C5/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Н
<linear/linear_model/C5/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
П
>linear/linear_model/C5/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
П
>linear/linear_model/C5/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
6linear/linear_model/C5/to_sparse_input/strided_slice_1StridedSlice,linear/linear_model/C5/to_sparse_input/Where<linear/linear_model/C5/to_sparse_input/strided_slice_1/stack>linear/linear_model/C5/to_sparse_input/strided_slice_1/stack_1>linear/linear_model/C5/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
Я
.linear/linear_model/C5/to_sparse_input/unstackUnpack+linear/linear_model/C5/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
†
,linear/linear_model/C5/to_sparse_input/stackPack0linear/linear_model/C5/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
…
*linear/linear_model/C5/to_sparse_input/MulMul6linear/linear_model/C5/to_sparse_input/strided_slice_1,linear/linear_model/C5/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Ж
<linear/linear_model/C5/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ж
*linear/linear_model/C5/to_sparse_input/SumSum*linear/linear_model/C5/to_sparse_input/Mul<linear/linear_model/C5/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
Ѕ
*linear/linear_model/C5/to_sparse_input/AddAdd4linear/linear_model/C5/to_sparse_input/strided_slice*linear/linear_model/C5/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
п
-linear/linear_model/C5/to_sparse_input/GatherGather.linear/linear_model/C5/to_sparse_input/Reshape*linear/linear_model/C5/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Я
linear/linear_model/C5/lookupStringToHashBucketFast-linear/linear_model/C5/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
К
!linear/linear_model/C5/Shape/CastCast+linear/linear_model/C5/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
t
*linear/linear_model/C5/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
v
,linear/linear_model/C5/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
v
,linear/linear_model/C5/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
$linear/linear_model/C5/strided_sliceStridedSlice!linear/linear_model/C5/Shape/Cast*linear/linear_model/C5/strided_slice/stack,linear/linear_model/C5/strided_slice/stack_1,linear/linear_model/C5/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
j
linear/linear_model/C5/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
¶
linear/linear_model/C5/Cast/xPack$linear/linear_model/C5/strided_slicelinear/linear_model/C5/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
v
linear/linear_model/C5/CastCastlinear/linear_model/C5/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
№
$linear/linear_model/C5/SparseReshapeSparseReshape,linear/linear_model/C5/to_sparse_input/Where+linear/linear_model/C5/to_sparse_input/Castlinear/linear_model/C5/Cast*-
_output_shapes
:€€€€€€€€€:
Ж
-linear/linear_model/C5/SparseReshape/IdentityIdentitylinear/linear_model/C5/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
»
7linear/linear_model/C5/weights/part_0/Initializer/zerosConst*
valueB	и*    *8
_class.
,*loc:@linear/linear_model/C5/weights/part_0*
dtype0*
_output_shapes
:	и
’
%linear/linear_model/C5/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*8
_class.
,*loc:@linear/linear_model/C5/weights/part_0
£
,linear/linear_model/C5/weights/part_0/AssignAssign%linear/linear_model/C5/weights/part_07linear/linear_model/C5/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/C5/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ѕ
*linear/linear_model/C5/weights/part_0/readIdentity%linear/linear_model/C5/weights/part_0*8
_class.
,*loc:@linear/linear_model/C5/weights/part_0*
_output_shapes
:	и*
T0
y
/linear/linear_model/C5/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
x
.linear/linear_model/C5/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
н
)linear/linear_model/C5/weighted_sum/SliceSlice&linear/linear_model/C5/SparseReshape:1/linear/linear_model/C5/weighted_sum/Slice/begin.linear/linear_model/C5/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
s
)linear/linear_model/C5/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ƒ
(linear/linear_model/C5/weighted_sum/ProdProd)linear/linear_model/C5/weighted_sum/Slice)linear/linear_model/C5/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
t
2linear/linear_model/C5/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
я
*linear/linear_model/C5/weighted_sum/GatherGather&linear/linear_model/C5/SparseReshape:12linear/linear_model/C5/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
¬
*linear/linear_model/C5/weighted_sum/Cast/xPack(linear/linear_model/C5/weighted_sum/Prod*linear/linear_model/C5/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
л
1linear/linear_model/C5/weighted_sum/SparseReshapeSparseReshape$linear/linear_model/C5/SparseReshape&linear/linear_model/C5/SparseReshape:1*linear/linear_model/C5/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
£
:linear/linear_model/C5/weighted_sum/SparseReshape/IdentityIdentity-linear/linear_model/C5/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
t
2linear/linear_model/C5/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ё
0linear/linear_model/C5/weighted_sum/GreaterEqualGreaterEqual:linear/linear_model/C5/weighted_sum/SparseReshape/Identity2linear/linear_model/C5/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Н
)linear/linear_model/C5/weighted_sum/WhereWhere0linear/linear_model/C5/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/C5/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
–
+linear/linear_model/C5/weighted_sum/ReshapeReshape)linear/linear_model/C5/weighted_sum/Where1linear/linear_model/C5/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
ц
,linear/linear_model/C5/weighted_sum/Gather_1Gather1linear/linear_model/C5/weighted_sum/SparseReshape+linear/linear_model/C5/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ы
,linear/linear_model/C5/weighted_sum/Gather_2Gather:linear/linear_model/C5/weighted_sum/SparseReshape/Identity+linear/linear_model/C5/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Т
,linear/linear_model/C5/weighted_sum/IdentityIdentity3linear/linear_model/C5/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear_model/C5/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
К
Klinear/linear_model/C5/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear_model/C5/weighted_sum/Gather_1,linear/linear_model/C5/weighted_sum/Gather_2,linear/linear_model/C5/weighted_sum/Identity=linear/linear_model/C5/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
†
Olinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Љ
Ilinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear_model/C5/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/strided_slice/stackQlinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
–
@linear/linear_model/C5/weighted_sum/embedding_lookup_sparse/CastCastIlinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
з
Blinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/UniqueUniqueMlinear/linear_model/C5/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
а
Llinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/embedding_lookupGather*linear/linear_model/C5/weights/part_0/readBlinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*8
_class.
,*loc:@linear/linear_model/C5/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
г
;linear/linear_model/C5/weighted_sum/embedding_lookup_sparseSparseSegmentSumLlinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/embedding_lookupDlinear/linear_model/C5/weighted_sum/embedding_lookup_sparse/Unique:1@linear/linear_model/C5/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Д
3linear/linear_model/C5/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
ь
-linear/linear_model/C5/weighted_sum/Reshape_1ReshapeMlinear/linear_model/C5/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear_model/C5/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

§
)linear/linear_model/C5/weighted_sum/ShapeShape;linear/linear_model/C5/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Б
7linear/linear_model/C5/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C5/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C5/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
1linear/linear_model/C5/weighted_sum/strided_sliceStridedSlice)linear/linear_model/C5/weighted_sum/Shape7linear/linear_model/C5/weighted_sum/strided_slice/stack9linear/linear_model/C5/weighted_sum/strided_slice/stack_19linear/linear_model/C5/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
m
+linear/linear_model/C5/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ћ
)linear/linear_model/C5/weighted_sum/stackPack+linear/linear_model/C5/weighted_sum/stack/01linear/linear_model/C5/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
„
(linear/linear_model/C5/weighted_sum/TileTile-linear/linear_model/C5/weighted_sum/Reshape_1)linear/linear_model/C5/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

™
.linear/linear_model/C5/weighted_sum/zeros_like	ZerosLike;linear/linear_model/C5/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ц
#linear/linear_model/C5/weighted_sumSelect(linear/linear_model/C5/weighted_sum/Tile.linear/linear_model/C5/weighted_sum/zeros_like;linear/linear_model/C5/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
О
*linear/linear_model/C5/weighted_sum/Cast_1Cast&linear/linear_model/C5/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
{
1linear/linear_model/C5/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
z
0linear/linear_model/C5/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
+linear/linear_model/C5/weighted_sum/Slice_1Slice*linear/linear_model/C5/weighted_sum/Cast_11linear/linear_model/C5/weighted_sum/Slice_1/begin0linear/linear_model/C5/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
О
+linear/linear_model/C5/weighted_sum/Shape_1Shape#linear/linear_model/C5/weighted_sum*
out_type0*
_output_shapes
:*
T0
{
1linear/linear_model/C5/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Г
0linear/linear_model/C5/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ш
+linear/linear_model/C5/weighted_sum/Slice_2Slice+linear/linear_model/C5/weighted_sum/Shape_11linear/linear_model/C5/weighted_sum/Slice_2/begin0linear/linear_model/C5/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
q
/linear/linear_model/C5/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ы
*linear/linear_model/C5/weighted_sum/concatConcatV2+linear/linear_model/C5/weighted_sum/Slice_1+linear/linear_model/C5/weighted_sum/Slice_2/linear/linear_model/C5/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
…
-linear/linear_model/C5/weighted_sum/Reshape_2Reshape#linear/linear_model/C5/weighted_sum*linear/linear_model/C5/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
,linear/linear_model/C6/to_sparse_input/ShapeShapeExpandDims_20*
out_type0*
_output_shapes
:*
T0
Х
+linear/linear_model/C6/to_sparse_input/CastCast,linear/linear_model/C6/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
p
/linear/linear_model/C6/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
≠
/linear/linear_model/C6/to_sparse_input/NotEqualNotEqualExpandDims_20/linear/linear_model/C6/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
П
,linear/linear_model/C6/to_sparse_input/WhereWhere/linear/linear_model/C6/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
З
4linear/linear_model/C6/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ї
.linear/linear_model/C6/to_sparse_input/ReshapeReshapeExpandDims_204linear/linear_model/C6/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Л
:linear/linear_model/C6/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C6/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C6/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
…
4linear/linear_model/C6/to_sparse_input/strided_sliceStridedSlice,linear/linear_model/C6/to_sparse_input/Where:linear/linear_model/C6/to_sparse_input/strided_slice/stack<linear/linear_model/C6/to_sparse_input/strided_slice/stack_1<linear/linear_model/C6/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Н
<linear/linear_model/C6/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
П
>linear/linear_model/C6/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
П
>linear/linear_model/C6/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
6linear/linear_model/C6/to_sparse_input/strided_slice_1StridedSlice,linear/linear_model/C6/to_sparse_input/Where<linear/linear_model/C6/to_sparse_input/strided_slice_1/stack>linear/linear_model/C6/to_sparse_input/strided_slice_1/stack_1>linear/linear_model/C6/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
Я
.linear/linear_model/C6/to_sparse_input/unstackUnpack+linear/linear_model/C6/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
†
,linear/linear_model/C6/to_sparse_input/stackPack0linear/linear_model/C6/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
…
*linear/linear_model/C6/to_sparse_input/MulMul6linear/linear_model/C6/to_sparse_input/strided_slice_1,linear/linear_model/C6/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Ж
<linear/linear_model/C6/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ж
*linear/linear_model/C6/to_sparse_input/SumSum*linear/linear_model/C6/to_sparse_input/Mul<linear/linear_model/C6/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
Ѕ
*linear/linear_model/C6/to_sparse_input/AddAdd4linear/linear_model/C6/to_sparse_input/strided_slice*linear/linear_model/C6/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
п
-linear/linear_model/C6/to_sparse_input/GatherGather.linear/linear_model/C6/to_sparse_input/Reshape*linear/linear_model/C6/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Я
linear/linear_model/C6/lookupStringToHashBucketFast-linear/linear_model/C6/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
К
!linear/linear_model/C6/Shape/CastCast+linear/linear_model/C6/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
t
*linear/linear_model/C6/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
v
,linear/linear_model/C6/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
v
,linear/linear_model/C6/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
$linear/linear_model/C6/strided_sliceStridedSlice!linear/linear_model/C6/Shape/Cast*linear/linear_model/C6/strided_slice/stack,linear/linear_model/C6/strided_slice/stack_1,linear/linear_model/C6/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
j
linear/linear_model/C6/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
¶
linear/linear_model/C6/Cast/xPack$linear/linear_model/C6/strided_slicelinear/linear_model/C6/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
v
linear/linear_model/C6/CastCastlinear/linear_model/C6/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
№
$linear/linear_model/C6/SparseReshapeSparseReshape,linear/linear_model/C6/to_sparse_input/Where+linear/linear_model/C6/to_sparse_input/Castlinear/linear_model/C6/Cast*-
_output_shapes
:€€€€€€€€€:
Ж
-linear/linear_model/C6/SparseReshape/IdentityIdentitylinear/linear_model/C6/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
»
7linear/linear_model/C6/weights/part_0/Initializer/zerosConst*
valueB	и*    *8
_class.
,*loc:@linear/linear_model/C6/weights/part_0*
dtype0*
_output_shapes
:	и
’
%linear/linear_model/C6/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*8
_class.
,*loc:@linear/linear_model/C6/weights/part_0
£
,linear/linear_model/C6/weights/part_0/AssignAssign%linear/linear_model/C6/weights/part_07linear/linear_model/C6/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/C6/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ѕ
*linear/linear_model/C6/weights/part_0/readIdentity%linear/linear_model/C6/weights/part_0*8
_class.
,*loc:@linear/linear_model/C6/weights/part_0*
_output_shapes
:	и*
T0
y
/linear/linear_model/C6/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
x
.linear/linear_model/C6/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
н
)linear/linear_model/C6/weighted_sum/SliceSlice&linear/linear_model/C6/SparseReshape:1/linear/linear_model/C6/weighted_sum/Slice/begin.linear/linear_model/C6/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
s
)linear/linear_model/C6/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ƒ
(linear/linear_model/C6/weighted_sum/ProdProd)linear/linear_model/C6/weighted_sum/Slice)linear/linear_model/C6/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
t
2linear/linear_model/C6/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
я
*linear/linear_model/C6/weighted_sum/GatherGather&linear/linear_model/C6/SparseReshape:12linear/linear_model/C6/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
¬
*linear/linear_model/C6/weighted_sum/Cast/xPack(linear/linear_model/C6/weighted_sum/Prod*linear/linear_model/C6/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
л
1linear/linear_model/C6/weighted_sum/SparseReshapeSparseReshape$linear/linear_model/C6/SparseReshape&linear/linear_model/C6/SparseReshape:1*linear/linear_model/C6/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
£
:linear/linear_model/C6/weighted_sum/SparseReshape/IdentityIdentity-linear/linear_model/C6/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
t
2linear/linear_model/C6/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ё
0linear/linear_model/C6/weighted_sum/GreaterEqualGreaterEqual:linear/linear_model/C6/weighted_sum/SparseReshape/Identity2linear/linear_model/C6/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Н
)linear/linear_model/C6/weighted_sum/WhereWhere0linear/linear_model/C6/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/C6/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
–
+linear/linear_model/C6/weighted_sum/ReshapeReshape)linear/linear_model/C6/weighted_sum/Where1linear/linear_model/C6/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
ц
,linear/linear_model/C6/weighted_sum/Gather_1Gather1linear/linear_model/C6/weighted_sum/SparseReshape+linear/linear_model/C6/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ы
,linear/linear_model/C6/weighted_sum/Gather_2Gather:linear/linear_model/C6/weighted_sum/SparseReshape/Identity+linear/linear_model/C6/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Т
,linear/linear_model/C6/weighted_sum/IdentityIdentity3linear/linear_model/C6/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear_model/C6/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
К
Klinear/linear_model/C6/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear_model/C6/weighted_sum/Gather_1,linear/linear_model/C6/weighted_sum/Gather_2,linear/linear_model/C6/weighted_sum/Identity=linear/linear_model/C6/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
†
Olinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Љ
Ilinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear_model/C6/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/strided_slice/stackQlinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
–
@linear/linear_model/C6/weighted_sum/embedding_lookup_sparse/CastCastIlinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
з
Blinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/UniqueUniqueMlinear/linear_model/C6/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
а
Llinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/embedding_lookupGather*linear/linear_model/C6/weights/part_0/readBlinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*8
_class.
,*loc:@linear/linear_model/C6/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
г
;linear/linear_model/C6/weighted_sum/embedding_lookup_sparseSparseSegmentSumLlinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/embedding_lookupDlinear/linear_model/C6/weighted_sum/embedding_lookup_sparse/Unique:1@linear/linear_model/C6/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Д
3linear/linear_model/C6/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
ь
-linear/linear_model/C6/weighted_sum/Reshape_1ReshapeMlinear/linear_model/C6/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear_model/C6/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

§
)linear/linear_model/C6/weighted_sum/ShapeShape;linear/linear_model/C6/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Б
7linear/linear_model/C6/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C6/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C6/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
1linear/linear_model/C6/weighted_sum/strided_sliceStridedSlice)linear/linear_model/C6/weighted_sum/Shape7linear/linear_model/C6/weighted_sum/strided_slice/stack9linear/linear_model/C6/weighted_sum/strided_slice/stack_19linear/linear_model/C6/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
m
+linear/linear_model/C6/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ћ
)linear/linear_model/C6/weighted_sum/stackPack+linear/linear_model/C6/weighted_sum/stack/01linear/linear_model/C6/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
„
(linear/linear_model/C6/weighted_sum/TileTile-linear/linear_model/C6/weighted_sum/Reshape_1)linear/linear_model/C6/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

™
.linear/linear_model/C6/weighted_sum/zeros_like	ZerosLike;linear/linear_model/C6/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ц
#linear/linear_model/C6/weighted_sumSelect(linear/linear_model/C6/weighted_sum/Tile.linear/linear_model/C6/weighted_sum/zeros_like;linear/linear_model/C6/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
О
*linear/linear_model/C6/weighted_sum/Cast_1Cast&linear/linear_model/C6/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
{
1linear/linear_model/C6/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
z
0linear/linear_model/C6/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
+linear/linear_model/C6/weighted_sum/Slice_1Slice*linear/linear_model/C6/weighted_sum/Cast_11linear/linear_model/C6/weighted_sum/Slice_1/begin0linear/linear_model/C6/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
О
+linear/linear_model/C6/weighted_sum/Shape_1Shape#linear/linear_model/C6/weighted_sum*
out_type0*
_output_shapes
:*
T0
{
1linear/linear_model/C6/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Г
0linear/linear_model/C6/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ш
+linear/linear_model/C6/weighted_sum/Slice_2Slice+linear/linear_model/C6/weighted_sum/Shape_11linear/linear_model/C6/weighted_sum/Slice_2/begin0linear/linear_model/C6/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
q
/linear/linear_model/C6/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ы
*linear/linear_model/C6/weighted_sum/concatConcatV2+linear/linear_model/C6/weighted_sum/Slice_1+linear/linear_model/C6/weighted_sum/Slice_2/linear/linear_model/C6/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
…
-linear/linear_model/C6/weighted_sum/Reshape_2Reshape#linear/linear_model/C6/weighted_sum*linear/linear_model/C6/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
,linear/linear_model/C7/to_sparse_input/ShapeShapeExpandDims_16*
out_type0*
_output_shapes
:*
T0
Х
+linear/linear_model/C7/to_sparse_input/CastCast,linear/linear_model/C7/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
p
/linear/linear_model/C7/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
≠
/linear/linear_model/C7/to_sparse_input/NotEqualNotEqualExpandDims_16/linear/linear_model/C7/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
П
,linear/linear_model/C7/to_sparse_input/WhereWhere/linear/linear_model/C7/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
З
4linear/linear_model/C7/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ї
.linear/linear_model/C7/to_sparse_input/ReshapeReshapeExpandDims_164linear/linear_model/C7/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Л
:linear/linear_model/C7/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C7/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C7/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
…
4linear/linear_model/C7/to_sparse_input/strided_sliceStridedSlice,linear/linear_model/C7/to_sparse_input/Where:linear/linear_model/C7/to_sparse_input/strided_slice/stack<linear/linear_model/C7/to_sparse_input/strided_slice/stack_1<linear/linear_model/C7/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Н
<linear/linear_model/C7/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
П
>linear/linear_model/C7/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
П
>linear/linear_model/C7/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
6linear/linear_model/C7/to_sparse_input/strided_slice_1StridedSlice,linear/linear_model/C7/to_sparse_input/Where<linear/linear_model/C7/to_sparse_input/strided_slice_1/stack>linear/linear_model/C7/to_sparse_input/strided_slice_1/stack_1>linear/linear_model/C7/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
Я
.linear/linear_model/C7/to_sparse_input/unstackUnpack+linear/linear_model/C7/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
†
,linear/linear_model/C7/to_sparse_input/stackPack0linear/linear_model/C7/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
…
*linear/linear_model/C7/to_sparse_input/MulMul6linear/linear_model/C7/to_sparse_input/strided_slice_1,linear/linear_model/C7/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Ж
<linear/linear_model/C7/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ж
*linear/linear_model/C7/to_sparse_input/SumSum*linear/linear_model/C7/to_sparse_input/Mul<linear/linear_model/C7/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
Ѕ
*linear/linear_model/C7/to_sparse_input/AddAdd4linear/linear_model/C7/to_sparse_input/strided_slice*linear/linear_model/C7/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
п
-linear/linear_model/C7/to_sparse_input/GatherGather.linear/linear_model/C7/to_sparse_input/Reshape*linear/linear_model/C7/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Я
linear/linear_model/C7/lookupStringToHashBucketFast-linear/linear_model/C7/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
К
!linear/linear_model/C7/Shape/CastCast+linear/linear_model/C7/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
t
*linear/linear_model/C7/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
v
,linear/linear_model/C7/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
v
,linear/linear_model/C7/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
$linear/linear_model/C7/strided_sliceStridedSlice!linear/linear_model/C7/Shape/Cast*linear/linear_model/C7/strided_slice/stack,linear/linear_model/C7/strided_slice/stack_1,linear/linear_model/C7/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
j
linear/linear_model/C7/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
¶
linear/linear_model/C7/Cast/xPack$linear/linear_model/C7/strided_slicelinear/linear_model/C7/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
v
linear/linear_model/C7/CastCastlinear/linear_model/C7/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
№
$linear/linear_model/C7/SparseReshapeSparseReshape,linear/linear_model/C7/to_sparse_input/Where+linear/linear_model/C7/to_sparse_input/Castlinear/linear_model/C7/Cast*-
_output_shapes
:€€€€€€€€€:
Ж
-linear/linear_model/C7/SparseReshape/IdentityIdentitylinear/linear_model/C7/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
»
7linear/linear_model/C7/weights/part_0/Initializer/zerosConst*
valueB	и*    *8
_class.
,*loc:@linear/linear_model/C7/weights/part_0*
dtype0*
_output_shapes
:	и
’
%linear/linear_model/C7/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*8
_class.
,*loc:@linear/linear_model/C7/weights/part_0
£
,linear/linear_model/C7/weights/part_0/AssignAssign%linear/linear_model/C7/weights/part_07linear/linear_model/C7/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/C7/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ѕ
*linear/linear_model/C7/weights/part_0/readIdentity%linear/linear_model/C7/weights/part_0*8
_class.
,*loc:@linear/linear_model/C7/weights/part_0*
_output_shapes
:	и*
T0
y
/linear/linear_model/C7/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
x
.linear/linear_model/C7/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
н
)linear/linear_model/C7/weighted_sum/SliceSlice&linear/linear_model/C7/SparseReshape:1/linear/linear_model/C7/weighted_sum/Slice/begin.linear/linear_model/C7/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
s
)linear/linear_model/C7/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ƒ
(linear/linear_model/C7/weighted_sum/ProdProd)linear/linear_model/C7/weighted_sum/Slice)linear/linear_model/C7/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
t
2linear/linear_model/C7/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
я
*linear/linear_model/C7/weighted_sum/GatherGather&linear/linear_model/C7/SparseReshape:12linear/linear_model/C7/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
¬
*linear/linear_model/C7/weighted_sum/Cast/xPack(linear/linear_model/C7/weighted_sum/Prod*linear/linear_model/C7/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
л
1linear/linear_model/C7/weighted_sum/SparseReshapeSparseReshape$linear/linear_model/C7/SparseReshape&linear/linear_model/C7/SparseReshape:1*linear/linear_model/C7/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
£
:linear/linear_model/C7/weighted_sum/SparseReshape/IdentityIdentity-linear/linear_model/C7/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
t
2linear/linear_model/C7/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ё
0linear/linear_model/C7/weighted_sum/GreaterEqualGreaterEqual:linear/linear_model/C7/weighted_sum/SparseReshape/Identity2linear/linear_model/C7/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Н
)linear/linear_model/C7/weighted_sum/WhereWhere0linear/linear_model/C7/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/C7/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
–
+linear/linear_model/C7/weighted_sum/ReshapeReshape)linear/linear_model/C7/weighted_sum/Where1linear/linear_model/C7/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
ц
,linear/linear_model/C7/weighted_sum/Gather_1Gather1linear/linear_model/C7/weighted_sum/SparseReshape+linear/linear_model/C7/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ы
,linear/linear_model/C7/weighted_sum/Gather_2Gather:linear/linear_model/C7/weighted_sum/SparseReshape/Identity+linear/linear_model/C7/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Т
,linear/linear_model/C7/weighted_sum/IdentityIdentity3linear/linear_model/C7/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear_model/C7/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
К
Klinear/linear_model/C7/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear_model/C7/weighted_sum/Gather_1,linear/linear_model/C7/weighted_sum/Gather_2,linear/linear_model/C7/weighted_sum/Identity=linear/linear_model/C7/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
†
Olinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Љ
Ilinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear_model/C7/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/strided_slice/stackQlinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
–
@linear/linear_model/C7/weighted_sum/embedding_lookup_sparse/CastCastIlinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
з
Blinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/UniqueUniqueMlinear/linear_model/C7/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
а
Llinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/embedding_lookupGather*linear/linear_model/C7/weights/part_0/readBlinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*8
_class.
,*loc:@linear/linear_model/C7/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
г
;linear/linear_model/C7/weighted_sum/embedding_lookup_sparseSparseSegmentSumLlinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/embedding_lookupDlinear/linear_model/C7/weighted_sum/embedding_lookup_sparse/Unique:1@linear/linear_model/C7/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Д
3linear/linear_model/C7/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
ь
-linear/linear_model/C7/weighted_sum/Reshape_1ReshapeMlinear/linear_model/C7/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear_model/C7/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

§
)linear/linear_model/C7/weighted_sum/ShapeShape;linear/linear_model/C7/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Б
7linear/linear_model/C7/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C7/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C7/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
1linear/linear_model/C7/weighted_sum/strided_sliceStridedSlice)linear/linear_model/C7/weighted_sum/Shape7linear/linear_model/C7/weighted_sum/strided_slice/stack9linear/linear_model/C7/weighted_sum/strided_slice/stack_19linear/linear_model/C7/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
m
+linear/linear_model/C7/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ћ
)linear/linear_model/C7/weighted_sum/stackPack+linear/linear_model/C7/weighted_sum/stack/01linear/linear_model/C7/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
„
(linear/linear_model/C7/weighted_sum/TileTile-linear/linear_model/C7/weighted_sum/Reshape_1)linear/linear_model/C7/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

™
.linear/linear_model/C7/weighted_sum/zeros_like	ZerosLike;linear/linear_model/C7/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ц
#linear/linear_model/C7/weighted_sumSelect(linear/linear_model/C7/weighted_sum/Tile.linear/linear_model/C7/weighted_sum/zeros_like;linear/linear_model/C7/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
О
*linear/linear_model/C7/weighted_sum/Cast_1Cast&linear/linear_model/C7/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
{
1linear/linear_model/C7/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
z
0linear/linear_model/C7/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
+linear/linear_model/C7/weighted_sum/Slice_1Slice*linear/linear_model/C7/weighted_sum/Cast_11linear/linear_model/C7/weighted_sum/Slice_1/begin0linear/linear_model/C7/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
О
+linear/linear_model/C7/weighted_sum/Shape_1Shape#linear/linear_model/C7/weighted_sum*
out_type0*
_output_shapes
:*
T0
{
1linear/linear_model/C7/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Г
0linear/linear_model/C7/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ш
+linear/linear_model/C7/weighted_sum/Slice_2Slice+linear/linear_model/C7/weighted_sum/Shape_11linear/linear_model/C7/weighted_sum/Slice_2/begin0linear/linear_model/C7/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
q
/linear/linear_model/C7/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ы
*linear/linear_model/C7/weighted_sum/concatConcatV2+linear/linear_model/C7/weighted_sum/Slice_1+linear/linear_model/C7/weighted_sum/Slice_2/linear/linear_model/C7/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
…
-linear/linear_model/C7/weighted_sum/Reshape_2Reshape#linear/linear_model/C7/weighted_sum*linear/linear_model/C7/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
y
,linear/linear_model/C8/to_sparse_input/ShapeShapeExpandDims_23*
out_type0*
_output_shapes
:*
T0
Х
+linear/linear_model/C8/to_sparse_input/CastCast,linear/linear_model/C8/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
p
/linear/linear_model/C8/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
≠
/linear/linear_model/C8/to_sparse_input/NotEqualNotEqualExpandDims_23/linear/linear_model/C8/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
П
,linear/linear_model/C8/to_sparse_input/WhereWhere/linear/linear_model/C8/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
З
4linear/linear_model/C8/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ї
.linear/linear_model/C8/to_sparse_input/ReshapeReshapeExpandDims_234linear/linear_model/C8/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Л
:linear/linear_model/C8/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C8/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C8/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
…
4linear/linear_model/C8/to_sparse_input/strided_sliceStridedSlice,linear/linear_model/C8/to_sparse_input/Where:linear/linear_model/C8/to_sparse_input/strided_slice/stack<linear/linear_model/C8/to_sparse_input/strided_slice/stack_1<linear/linear_model/C8/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Н
<linear/linear_model/C8/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
П
>linear/linear_model/C8/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
П
>linear/linear_model/C8/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
6linear/linear_model/C8/to_sparse_input/strided_slice_1StridedSlice,linear/linear_model/C8/to_sparse_input/Where<linear/linear_model/C8/to_sparse_input/strided_slice_1/stack>linear/linear_model/C8/to_sparse_input/strided_slice_1/stack_1>linear/linear_model/C8/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
Я
.linear/linear_model/C8/to_sparse_input/unstackUnpack+linear/linear_model/C8/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
†
,linear/linear_model/C8/to_sparse_input/stackPack0linear/linear_model/C8/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
…
*linear/linear_model/C8/to_sparse_input/MulMul6linear/linear_model/C8/to_sparse_input/strided_slice_1,linear/linear_model/C8/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Ж
<linear/linear_model/C8/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ж
*linear/linear_model/C8/to_sparse_input/SumSum*linear/linear_model/C8/to_sparse_input/Mul<linear/linear_model/C8/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
Ѕ
*linear/linear_model/C8/to_sparse_input/AddAdd4linear/linear_model/C8/to_sparse_input/strided_slice*linear/linear_model/C8/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
п
-linear/linear_model/C8/to_sparse_input/GatherGather.linear/linear_model/C8/to_sparse_input/Reshape*linear/linear_model/C8/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Я
linear/linear_model/C8/lookupStringToHashBucketFast-linear/linear_model/C8/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
К
!linear/linear_model/C8/Shape/CastCast+linear/linear_model/C8/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
t
*linear/linear_model/C8/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
v
,linear/linear_model/C8/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
v
,linear/linear_model/C8/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
$linear/linear_model/C8/strided_sliceStridedSlice!linear/linear_model/C8/Shape/Cast*linear/linear_model/C8/strided_slice/stack,linear/linear_model/C8/strided_slice/stack_1,linear/linear_model/C8/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
j
linear/linear_model/C8/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
¶
linear/linear_model/C8/Cast/xPack$linear/linear_model/C8/strided_slicelinear/linear_model/C8/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
v
linear/linear_model/C8/CastCastlinear/linear_model/C8/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
№
$linear/linear_model/C8/SparseReshapeSparseReshape,linear/linear_model/C8/to_sparse_input/Where+linear/linear_model/C8/to_sparse_input/Castlinear/linear_model/C8/Cast*-
_output_shapes
:€€€€€€€€€:
Ж
-linear/linear_model/C8/SparseReshape/IdentityIdentitylinear/linear_model/C8/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
»
7linear/linear_model/C8/weights/part_0/Initializer/zerosConst*
valueB	и*    *8
_class.
,*loc:@linear/linear_model/C8/weights/part_0*
dtype0*
_output_shapes
:	и
’
%linear/linear_model/C8/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*8
_class.
,*loc:@linear/linear_model/C8/weights/part_0
£
,linear/linear_model/C8/weights/part_0/AssignAssign%linear/linear_model/C8/weights/part_07linear/linear_model/C8/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/C8/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ѕ
*linear/linear_model/C8/weights/part_0/readIdentity%linear/linear_model/C8/weights/part_0*8
_class.
,*loc:@linear/linear_model/C8/weights/part_0*
_output_shapes
:	и*
T0
y
/linear/linear_model/C8/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
x
.linear/linear_model/C8/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
н
)linear/linear_model/C8/weighted_sum/SliceSlice&linear/linear_model/C8/SparseReshape:1/linear/linear_model/C8/weighted_sum/Slice/begin.linear/linear_model/C8/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
s
)linear/linear_model/C8/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ƒ
(linear/linear_model/C8/weighted_sum/ProdProd)linear/linear_model/C8/weighted_sum/Slice)linear/linear_model/C8/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
t
2linear/linear_model/C8/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
я
*linear/linear_model/C8/weighted_sum/GatherGather&linear/linear_model/C8/SparseReshape:12linear/linear_model/C8/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
¬
*linear/linear_model/C8/weighted_sum/Cast/xPack(linear/linear_model/C8/weighted_sum/Prod*linear/linear_model/C8/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
л
1linear/linear_model/C8/weighted_sum/SparseReshapeSparseReshape$linear/linear_model/C8/SparseReshape&linear/linear_model/C8/SparseReshape:1*linear/linear_model/C8/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
£
:linear/linear_model/C8/weighted_sum/SparseReshape/IdentityIdentity-linear/linear_model/C8/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
t
2linear/linear_model/C8/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ё
0linear/linear_model/C8/weighted_sum/GreaterEqualGreaterEqual:linear/linear_model/C8/weighted_sum/SparseReshape/Identity2linear/linear_model/C8/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Н
)linear/linear_model/C8/weighted_sum/WhereWhere0linear/linear_model/C8/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/C8/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
–
+linear/linear_model/C8/weighted_sum/ReshapeReshape)linear/linear_model/C8/weighted_sum/Where1linear/linear_model/C8/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
ц
,linear/linear_model/C8/weighted_sum/Gather_1Gather1linear/linear_model/C8/weighted_sum/SparseReshape+linear/linear_model/C8/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ы
,linear/linear_model/C8/weighted_sum/Gather_2Gather:linear/linear_model/C8/weighted_sum/SparseReshape/Identity+linear/linear_model/C8/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Т
,linear/linear_model/C8/weighted_sum/IdentityIdentity3linear/linear_model/C8/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear_model/C8/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
К
Klinear/linear_model/C8/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear_model/C8/weighted_sum/Gather_1,linear/linear_model/C8/weighted_sum/Gather_2,linear/linear_model/C8/weighted_sum/Identity=linear/linear_model/C8/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
†
Olinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Љ
Ilinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear_model/C8/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/strided_slice/stackQlinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
–
@linear/linear_model/C8/weighted_sum/embedding_lookup_sparse/CastCastIlinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
з
Blinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/UniqueUniqueMlinear/linear_model/C8/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
а
Llinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/embedding_lookupGather*linear/linear_model/C8/weights/part_0/readBlinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*8
_class.
,*loc:@linear/linear_model/C8/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
г
;linear/linear_model/C8/weighted_sum/embedding_lookup_sparseSparseSegmentSumLlinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/embedding_lookupDlinear/linear_model/C8/weighted_sum/embedding_lookup_sparse/Unique:1@linear/linear_model/C8/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Д
3linear/linear_model/C8/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
ь
-linear/linear_model/C8/weighted_sum/Reshape_1ReshapeMlinear/linear_model/C8/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear_model/C8/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

§
)linear/linear_model/C8/weighted_sum/ShapeShape;linear/linear_model/C8/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Б
7linear/linear_model/C8/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C8/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C8/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
1linear/linear_model/C8/weighted_sum/strided_sliceStridedSlice)linear/linear_model/C8/weighted_sum/Shape7linear/linear_model/C8/weighted_sum/strided_slice/stack9linear/linear_model/C8/weighted_sum/strided_slice/stack_19linear/linear_model/C8/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
m
+linear/linear_model/C8/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ћ
)linear/linear_model/C8/weighted_sum/stackPack+linear/linear_model/C8/weighted_sum/stack/01linear/linear_model/C8/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
„
(linear/linear_model/C8/weighted_sum/TileTile-linear/linear_model/C8/weighted_sum/Reshape_1)linear/linear_model/C8/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

™
.linear/linear_model/C8/weighted_sum/zeros_like	ZerosLike;linear/linear_model/C8/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ц
#linear/linear_model/C8/weighted_sumSelect(linear/linear_model/C8/weighted_sum/Tile.linear/linear_model/C8/weighted_sum/zeros_like;linear/linear_model/C8/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
О
*linear/linear_model/C8/weighted_sum/Cast_1Cast&linear/linear_model/C8/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
{
1linear/linear_model/C8/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
z
0linear/linear_model/C8/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
+linear/linear_model/C8/weighted_sum/Slice_1Slice*linear/linear_model/C8/weighted_sum/Cast_11linear/linear_model/C8/weighted_sum/Slice_1/begin0linear/linear_model/C8/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
О
+linear/linear_model/C8/weighted_sum/Shape_1Shape#linear/linear_model/C8/weighted_sum*
out_type0*
_output_shapes
:*
T0
{
1linear/linear_model/C8/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Г
0linear/linear_model/C8/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ш
+linear/linear_model/C8/weighted_sum/Slice_2Slice+linear/linear_model/C8/weighted_sum/Shape_11linear/linear_model/C8/weighted_sum/Slice_2/begin0linear/linear_model/C8/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
q
/linear/linear_model/C8/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ы
*linear/linear_model/C8/weighted_sum/concatConcatV2+linear/linear_model/C8/weighted_sum/Slice_1+linear/linear_model/C8/weighted_sum/Slice_2/linear/linear_model/C8/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
…
-linear/linear_model/C8/weighted_sum/Reshape_2Reshape#linear/linear_model/C8/weighted_sum*linear/linear_model/C8/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
x
,linear/linear_model/C9/to_sparse_input/ShapeShapeExpandDims_5*
out_type0*
_output_shapes
:*
T0
Х
+linear/linear_model/C9/to_sparse_input/CastCast,linear/linear_model/C9/to_sparse_input/Shape*

SrcT0*

DstT0	*
_output_shapes
:
p
/linear/linear_model/C9/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
ђ
/linear/linear_model/C9/to_sparse_input/NotEqualNotEqualExpandDims_5/linear/linear_model/C9/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
П
,linear/linear_model/C9/to_sparse_input/WhereWhere/linear/linear_model/C9/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
З
4linear/linear_model/C9/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
є
.linear/linear_model/C9/to_sparse_input/ReshapeReshapeExpandDims_54linear/linear_model/C9/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Л
:linear/linear_model/C9/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C9/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Н
<linear/linear_model/C9/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
…
4linear/linear_model/C9/to_sparse_input/strided_sliceStridedSlice,linear/linear_model/C9/to_sparse_input/Where:linear/linear_model/C9/to_sparse_input/strided_slice/stack<linear/linear_model/C9/to_sparse_input/strided_slice/stack_1<linear/linear_model/C9/to_sparse_input/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
Н
<linear/linear_model/C9/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
П
>linear/linear_model/C9/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
П
>linear/linear_model/C9/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
6linear/linear_model/C9/to_sparse_input/strided_slice_1StridedSlice,linear/linear_model/C9/to_sparse_input/Where<linear/linear_model/C9/to_sparse_input/strided_slice_1/stack>linear/linear_model/C9/to_sparse_input/strided_slice_1/stack_1>linear/linear_model/C9/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask *

begin_mask
Я
.linear/linear_model/C9/to_sparse_input/unstackUnpack+linear/linear_model/C9/to_sparse_input/Cast*

axis *
_output_shapes
: : *	
num*
T0	
†
,linear/linear_model/C9/to_sparse_input/stackPack0linear/linear_model/C9/to_sparse_input/unstack:1*
N*

axis *
_output_shapes
:*
T0	
…
*linear/linear_model/C9/to_sparse_input/MulMul6linear/linear_model/C9/to_sparse_input/strided_slice_1,linear/linear_model/C9/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Ж
<linear/linear_model/C9/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ж
*linear/linear_model/C9/to_sparse_input/SumSum*linear/linear_model/C9/to_sparse_input/Mul<linear/linear_model/C9/to_sparse_input/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0	
Ѕ
*linear/linear_model/C9/to_sparse_input/AddAdd4linear/linear_model/C9/to_sparse_input/strided_slice*linear/linear_model/C9/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
п
-linear/linear_model/C9/to_sparse_input/GatherGather.linear/linear_model/C9/to_sparse_input/Reshape*linear/linear_model/C9/to_sparse_input/Add*
validate_indices(*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Я
linear/linear_model/C9/lookupStringToHashBucketFast-linear/linear_model/C9/to_sparse_input/Gather*
num_bucketsи*#
_output_shapes
:€€€€€€€€€
К
!linear/linear_model/C9/Shape/CastCast+linear/linear_model/C9/to_sparse_input/Cast*

SrcT0	*

DstT0*
_output_shapes
:
t
*linear/linear_model/C9/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
v
,linear/linear_model/C9/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
v
,linear/linear_model/C9/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
$linear/linear_model/C9/strided_sliceStridedSlice!linear/linear_model/C9/Shape/Cast*linear/linear_model/C9/strided_slice/stack,linear/linear_model/C9/strided_slice/stack_1,linear/linear_model/C9/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
j
linear/linear_model/C9/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
¶
linear/linear_model/C9/Cast/xPack$linear/linear_model/C9/strided_slicelinear/linear_model/C9/Cast/x/1*
N*

axis *
_output_shapes
:*
T0
v
linear/linear_model/C9/CastCastlinear/linear_model/C9/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
№
$linear/linear_model/C9/SparseReshapeSparseReshape,linear/linear_model/C9/to_sparse_input/Where+linear/linear_model/C9/to_sparse_input/Castlinear/linear_model/C9/Cast*-
_output_shapes
:€€€€€€€€€:
Ж
-linear/linear_model/C9/SparseReshape/IdentityIdentitylinear/linear_model/C9/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
»
7linear/linear_model/C9/weights/part_0/Initializer/zerosConst*
valueB	и*    *8
_class.
,*loc:@linear/linear_model/C9/weights/part_0*
dtype0*
_output_shapes
:	и
’
%linear/linear_model/C9/weights/part_0
VariableV2*
shared_name *
_output_shapes
:	и*
	container *
shape:	и*
dtype0*8
_class.
,*loc:@linear/linear_model/C9/weights/part_0
£
,linear/linear_model/C9/weights/part_0/AssignAssign%linear/linear_model/C9/weights/part_07linear/linear_model/C9/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/C9/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ѕ
*linear/linear_model/C9/weights/part_0/readIdentity%linear/linear_model/C9/weights/part_0*8
_class.
,*loc:@linear/linear_model/C9/weights/part_0*
_output_shapes
:	и*
T0
y
/linear/linear_model/C9/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
x
.linear/linear_model/C9/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
н
)linear/linear_model/C9/weighted_sum/SliceSlice&linear/linear_model/C9/SparseReshape:1/linear/linear_model/C9/weighted_sum/Slice/begin.linear/linear_model/C9/weighted_sum/Slice/size*
Index0*
_output_shapes
:*
T0	
s
)linear/linear_model/C9/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ƒ
(linear/linear_model/C9/weighted_sum/ProdProd)linear/linear_model/C9/weighted_sum/Slice)linear/linear_model/C9/weighted_sum/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
t
2linear/linear_model/C9/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
я
*linear/linear_model/C9/weighted_sum/GatherGather&linear/linear_model/C9/SparseReshape:12linear/linear_model/C9/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
_output_shapes
: *
Tindices0
¬
*linear/linear_model/C9/weighted_sum/Cast/xPack(linear/linear_model/C9/weighted_sum/Prod*linear/linear_model/C9/weighted_sum/Gather*
N*

axis *
_output_shapes
:*
T0	
л
1linear/linear_model/C9/weighted_sum/SparseReshapeSparseReshape$linear/linear_model/C9/SparseReshape&linear/linear_model/C9/SparseReshape:1*linear/linear_model/C9/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
£
:linear/linear_model/C9/weighted_sum/SparseReshape/IdentityIdentity-linear/linear_model/C9/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
t
2linear/linear_model/C9/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ё
0linear/linear_model/C9/weighted_sum/GreaterEqualGreaterEqual:linear/linear_model/C9/weighted_sum/SparseReshape/Identity2linear/linear_model/C9/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Н
)linear/linear_model/C9/weighted_sum/WhereWhere0linear/linear_model/C9/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/C9/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
–
+linear/linear_model/C9/weighted_sum/ReshapeReshape)linear/linear_model/C9/weighted_sum/Where1linear/linear_model/C9/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
ц
,linear/linear_model/C9/weighted_sum/Gather_1Gather1linear/linear_model/C9/weighted_sum/SparseReshape+linear/linear_model/C9/weighted_sum/Reshape*
validate_indices(*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
ы
,linear/linear_model/C9/weighted_sum/Gather_2Gather:linear/linear_model/C9/weighted_sum/SparseReshape/Identity+linear/linear_model/C9/weighted_sum/Reshape*
validate_indices(*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Т
,linear/linear_model/C9/weighted_sum/IdentityIdentity3linear/linear_model/C9/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear_model/C9/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
К
Klinear/linear_model/C9/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear_model/C9/weighted_sum/Gather_1,linear/linear_model/C9/weighted_sum/Gather_2,linear/linear_model/C9/weighted_sum/Identity=linear/linear_model/C9/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
†
Olinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ґ
Qlinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Љ
Ilinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear_model/C9/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/strided_slice/stackQlinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
T0	*
end_mask*
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask
–
@linear/linear_model/C9/weighted_sum/embedding_lookup_sparse/CastCastIlinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:€€€€€€€€€
з
Blinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/UniqueUniqueMlinear/linear_model/C9/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
а
Llinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/embedding_lookupGather*linear/linear_model/C9/weights/part_0/readBlinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*8
_class.
,*loc:@linear/linear_model/C9/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
г
;linear/linear_model/C9/weighted_sum/embedding_lookup_sparseSparseSegmentSumLlinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/embedding_lookupDlinear/linear_model/C9/weighted_sum/embedding_lookup_sparse/Unique:1@linear/linear_model/C9/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
Д
3linear/linear_model/C9/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
ь
-linear/linear_model/C9/weighted_sum/Reshape_1ReshapeMlinear/linear_model/C9/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear_model/C9/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

§
)linear/linear_model/C9/weighted_sum/ShapeShape;linear/linear_model/C9/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Б
7linear/linear_model/C9/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C9/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Г
9linear/linear_model/C9/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
1linear/linear_model/C9/weighted_sum/strided_sliceStridedSlice)linear/linear_model/C9/weighted_sum/Shape7linear/linear_model/C9/weighted_sum/strided_slice/stack9linear/linear_model/C9/weighted_sum/strided_slice/stack_19linear/linear_model/C9/weighted_sum/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
m
+linear/linear_model/C9/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ћ
)linear/linear_model/C9/weighted_sum/stackPack+linear/linear_model/C9/weighted_sum/stack/01linear/linear_model/C9/weighted_sum/strided_slice*
N*

axis *
_output_shapes
:*
T0
„
(linear/linear_model/C9/weighted_sum/TileTile-linear/linear_model/C9/weighted_sum/Reshape_1)linear/linear_model/C9/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

™
.linear/linear_model/C9/weighted_sum/zeros_like	ZerosLike;linear/linear_model/C9/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ц
#linear/linear_model/C9/weighted_sumSelect(linear/linear_model/C9/weighted_sum/Tile.linear/linear_model/C9/weighted_sum/zeros_like;linear/linear_model/C9/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
О
*linear/linear_model/C9/weighted_sum/Cast_1Cast&linear/linear_model/C9/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
{
1linear/linear_model/C9/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
z
0linear/linear_model/C9/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
+linear/linear_model/C9/weighted_sum/Slice_1Slice*linear/linear_model/C9/weighted_sum/Cast_11linear/linear_model/C9/weighted_sum/Slice_1/begin0linear/linear_model/C9/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
О
+linear/linear_model/C9/weighted_sum/Shape_1Shape#linear/linear_model/C9/weighted_sum*
out_type0*
_output_shapes
:*
T0
{
1linear/linear_model/C9/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Г
0linear/linear_model/C9/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ш
+linear/linear_model/C9/weighted_sum/Slice_2Slice+linear/linear_model/C9/weighted_sum/Shape_11linear/linear_model/C9/weighted_sum/Slice_2/begin0linear/linear_model/C9/weighted_sum/Slice_2/size*
Index0*
_output_shapes
:*
T0
q
/linear/linear_model/C9/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ы
*linear/linear_model/C9/weighted_sum/concatConcatV2+linear/linear_model/C9/weighted_sum/Slice_1+linear/linear_model/C9/weighted_sum/Slice_2/linear/linear_model/C9/weighted_sum/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
…
-linear/linear_model/C9/weighted_sum/Reshape_2Reshape#linear/linear_model/C9/weighted_sum*linear/linear_model/C9/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
∞
(linear/linear_model/weighted_sum_no_biasAddN-linear/linear_model/C1/weighted_sum/Reshape_2.linear/linear_model/C10/weighted_sum/Reshape_28linear/linear_model/C10_X_C4_X_C5/weighted_sum/Reshape_2.linear/linear_model/C11/weighted_sum/Reshape_2.linear/linear_model/C12/weighted_sum/Reshape_2.linear/linear_model/C13/weighted_sum/Reshape_2.linear/linear_model/C14/weighted_sum/Reshape_2.linear/linear_model/C15/weighted_sum/Reshape_2.linear/linear_model/C16/weighted_sum/Reshape_2.linear/linear_model/C17/weighted_sum/Reshape_2.linear/linear_model/C18/weighted_sum/Reshape_2.linear/linear_model/C19/weighted_sum/Reshape_22linear/linear_model/C1_X_C1/weighted_sum/Reshape_2-linear/linear_model/C2/weighted_sum/Reshape_2.linear/linear_model/C20/weighted_sum/Reshape_2.linear/linear_model/C21/weighted_sum/Reshape_2.linear/linear_model/C22/weighted_sum/Reshape_2.linear/linear_model/C23/weighted_sum/Reshape_2.linear/linear_model/C24/weighted_sum/Reshape_2.linear/linear_model/C25/weighted_sum/Reshape_2.linear/linear_model/C26/weighted_sum/Reshape_2-linear/linear_model/C3/weighted_sum/Reshape_2-linear/linear_model/C4/weighted_sum/Reshape_2-linear/linear_model/C5/weighted_sum/Reshape_2-linear/linear_model/C6/weighted_sum/Reshape_2-linear/linear_model/C7/weighted_sum/Reshape_2-linear/linear_model/C8/weighted_sum/Reshape_2-linear/linear_model/C9/weighted_sum/Reshape_2*
N*'
_output_shapes
:€€€€€€€€€*
T0
¬
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
ѕ
'linear/linear_model/bias_weights/part_0
VariableV2*
shared_name *
_output_shapes
:*
	container *
shape:*
dtype0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
¶
.linear/linear_model/bias_weights/part_0/AssignAssign'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
¬
,linear/linear_model/bias_weights/part_0/readIdentity'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
:*
T0

 linear/linear_model/bias_weightsIdentity,linear/linear_model/bias_weights/part_0/read*
_output_shapes
:*
T0
ј
 linear/linear_model/weighted_sumBiasAdd(linear/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*'
_output_shapes
:€€€€€€€€€*
data_formatNHWC
^
linear/zero_fraction/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
Т
linear/zero_fraction/EqualEqual linear/linear_model/weighted_sumlinear/zero_fraction/zero*'
_output_shapes
:€€€€€€€€€*
T0
~
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€
k
linear/zero_fraction/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
Ц
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
Р
*linear/linear/fraction_of_zero_values/tagsConst*6
value-B+ B%linear/linear/fraction_of_zero_values*
_output_shapes
: *
dtype0
Ю
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction/Mean*
_output_shapes
: *
T0
u
linear/linear/activation/tagConst*)
value B Blinear/linear/activation*
_output_shapes
: *
dtype0
Н
linear/linear/activationHistogramSummarylinear/linear/activation/tag linear/linear_model/weighted_sum*
_output_shapes
: *
T0
r
addAdddnn/logits/BiasAdd linear/linear_model/weighted_sum*'
_output_shapes
:€€€€€€€€€*
T0
o
+binary_logistic_head/predictions/zeros_like	ZerosLikeadd*'
_output_shapes
:€€€€€€€€€*
T0
n
,binary_logistic_head/predictions/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
Џ
'binary_logistic_head/predictions/concatConcatV2+binary_logistic_head/predictions/zeros_likeadd,binary_logistic_head/predictions/concat/axis*
N*

Tidx0*'
_output_shapes
:€€€€€€€€€*
T0
k
)binary_logistic_head/predictions/logisticSigmoidadd*'
_output_shapes
:€€€€€€€€€*
T0
Ф
.binary_logistic_head/predictions/probabilitiesSoftmax'binary_logistic_head/predictions/concat*'
_output_shapes
:€€€€€€€€€*
T0
t
2binary_logistic_head/predictions/classes/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
№
(binary_logistic_head/predictions/classesArgMax'binary_logistic_head/predictions/concat2binary_logistic_head/predictions/classes/dimension*

Tidx0*
output_type0	*#
_output_shapes
:€€€€€€€€€*
T0
ђ
>binary_logistic_head/_classification_output_alternatives/ShapeShape.binary_logistic_head/predictions/probabilities*
out_type0*
_output_shapes
:*
T0
Ц
Lbinary_logistic_head/_classification_output_alternatives/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Ш
Nbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ш
Nbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ц
Fbinary_logistic_head/_classification_output_alternatives/strided_sliceStridedSlice>binary_logistic_head/_classification_output_alternatives/ShapeLbinary_logistic_head/_classification_output_alternatives/strided_slice/stackNbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_1Nbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
Ѓ
@binary_logistic_head/_classification_output_alternatives/Shape_1Shape.binary_logistic_head/predictions/probabilities*
out_type0*
_output_shapes
:*
T0
Ш
Nbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stackConst*
valueB:*
_output_shapes
:*
dtype0
Ъ
Pbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ъ
Pbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
†
Hbinary_logistic_head/_classification_output_alternatives/strided_slice_1StridedSlice@binary_logistic_head/_classification_output_alternatives/Shape_1Nbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stackPbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_1Pbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask*

begin_mask 
Ж
Dbinary_logistic_head/_classification_output_alternatives/range/startConst*
value	B : *
_output_shapes
: *
dtype0
Ж
Dbinary_logistic_head/_classification_output_alternatives/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
ќ
>binary_logistic_head/_classification_output_alternatives/rangeRangeDbinary_logistic_head/_classification_output_alternatives/range/startHbinary_logistic_head/_classification_output_alternatives/strided_slice_1Dbinary_logistic_head/_classification_output_alternatives/range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
Й
Gbinary_logistic_head/_classification_output_alternatives/ExpandDims/dimConst*
value	B : *
_output_shapes
: *
dtype0
Ш
Cbinary_logistic_head/_classification_output_alternatives/ExpandDims
ExpandDims>binary_logistic_head/_classification_output_alternatives/rangeGbinary_logistic_head/_classification_output_alternatives/ExpandDims/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
Л
Ibinary_logistic_head/_classification_output_alternatives/Tile/multiples/1Const*
value	B :*
_output_shapes
: *
dtype0
Ь
Gbinary_logistic_head/_classification_output_alternatives/Tile/multiplesPackFbinary_logistic_head/_classification_output_alternatives/strided_sliceIbinary_logistic_head/_classification_output_alternatives/Tile/multiples/1*
N*

axis *
_output_shapes
:*
T0
†
=binary_logistic_head/_classification_output_alternatives/TileTileCbinary_logistic_head/_classification_output_alternatives/ExpandDimsGbinary_logistic_head/_classification_output_alternatives/Tile/multiples*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0
Ђ
Gbinary_logistic_head/_classification_output_alternatives/classes_tensorAsString=binary_logistic_head/_classification_output_alternatives/Tile*
width€€€€€€€€€*

scientific( *0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
	precision€€€€€€€€€*
shortest( *

fill 
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_41dba5c70e9843f1ae5a745297bdad39/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
\
save/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
≠

save/SaveV2/tensor_namesConst*а	
value÷	B”	(Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBdnn/hiddenlayer_3/biasesBdnn/hiddenlayer_3/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepBlinear/linear_model/C1/weightsBlinear/linear_model/C10/weightsB)linear/linear_model/C10_X_C4_X_C5/weightsBlinear/linear_model/C11/weightsBlinear/linear_model/C12/weightsBlinear/linear_model/C13/weightsBlinear/linear_model/C14/weightsBlinear/linear_model/C15/weightsBlinear/linear_model/C16/weightsBlinear/linear_model/C17/weightsBlinear/linear_model/C18/weightsBlinear/linear_model/C19/weightsB#linear/linear_model/C1_X_C1/weightsBlinear/linear_model/C2/weightsBlinear/linear_model/C20/weightsBlinear/linear_model/C21/weightsBlinear/linear_model/C22/weightsBlinear/linear_model/C23/weightsBlinear/linear_model/C24/weightsBlinear/linear_model/C25/weightsBlinear/linear_model/C26/weightsBlinear/linear_model/C3/weightsBlinear/linear_model/C4/weightsBlinear/linear_model/C5/weightsBlinear/linear_model/C6/weightsBlinear/linear_model/C7/weightsBlinear/linear_model/C8/weightsBlinear/linear_model/C9/weightsB linear/linear_model/bias_weights*
_output_shapes
:(*
dtype0
З
save/SaveV2/shape_and_slicesConst*ґ
valueђB©(B	100 0,100B13 100 0,13:0,100B70 0,70B100 70 0,100:0,70B50 0,50B70 50 0,70:0,50B25 0,25B50 25 0,50:0,25B1 0,1B25 1 0,25:0,1B B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1 0,1*
_output_shapes
:(*
dtype0
Ї
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/read$dnn/hiddenlayer_2/biases/part_0/read%dnn/hiddenlayer_2/weights/part_0/read$dnn/hiddenlayer_3/biases/part_0/read%dnn/hiddenlayer_3/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_step*linear/linear_model/C1/weights/part_0/read+linear/linear_model/C10/weights/part_0/read5linear/linear_model/C10_X_C4_X_C5/weights/part_0/read+linear/linear_model/C11/weights/part_0/read+linear/linear_model/C12/weights/part_0/read+linear/linear_model/C13/weights/part_0/read+linear/linear_model/C14/weights/part_0/read+linear/linear_model/C15/weights/part_0/read+linear/linear_model/C16/weights/part_0/read+linear/linear_model/C17/weights/part_0/read+linear/linear_model/C18/weights/part_0/read+linear/linear_model/C19/weights/part_0/read/linear/linear_model/C1_X_C1/weights/part_0/read*linear/linear_model/C2/weights/part_0/read+linear/linear_model/C20/weights/part_0/read+linear/linear_model/C21/weights/part_0/read+linear/linear_model/C22/weights/part_0/read+linear/linear_model/C23/weights/part_0/read+linear/linear_model/C24/weights/part_0/read+linear/linear_model/C25/weights/part_0/read+linear/linear_model/C26/weights/part_0/read*linear/linear_model/C3/weights/part_0/read*linear/linear_model/C4/weights/part_0/read*linear/linear_model/C5/weights/part_0/read*linear/linear_model/C6/weights/part_0/read*linear/linear_model/C7/weights/part_0/read*linear/linear_model/C8/weights/part_0/read*linear/linear_model/C9/weights/part_0/read,linear/linear_model/bias_weights/part_0/read*6
dtypes,
*2(	
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*

axis *
_output_shapes
:*
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
_output_shapes
: *
T0
|
save/RestoreV2/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/biases*
_output_shapes
:*
dtype0
q
save/RestoreV2/shape_and_slicesConst*
valueBB	100 0,100*
_output_shapes
:*
dtype0
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
»
save/AssignAssigndnn/hiddenlayer_0/biases/part_0save/RestoreV2*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
use_locking(*
_output_shapes
:d*
T0*
validate_shape(

save/RestoreV2_1/tensor_namesConst*.
value%B#Bdnn/hiddenlayer_0/weights*
_output_shapes
:*
dtype0
{
!save/RestoreV2_1/shape_and_slicesConst*&
valueBB13 100 0,13:0,100*
_output_shapes
:*
dtype0
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
“
save/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save/RestoreV2_1*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
use_locking(*
_output_shapes

:d*
T0*
validate_shape(
~
save/RestoreV2_2/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/biases*
_output_shapes
:*
dtype0
q
!save/RestoreV2_2/shape_and_slicesConst*
valueBB70 0,70*
_output_shapes
:*
dtype0
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
ћ
save/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save/RestoreV2_2*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
use_locking(*
_output_shapes
:F*
T0*
validate_shape(

save/RestoreV2_3/tensor_namesConst*.
value%B#Bdnn/hiddenlayer_1/weights*
_output_shapes
:*
dtype0
{
!save/RestoreV2_3/shape_and_slicesConst*&
valueBB100 70 0,100:0,70*
_output_shapes
:*
dtype0
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
“
save/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save/RestoreV2_3*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
use_locking(*
_output_shapes

:dF*
T0*
validate_shape(
~
save/RestoreV2_4/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_2/biases*
_output_shapes
:*
dtype0
q
!save/RestoreV2_4/shape_and_slicesConst*
valueBB50 0,50*
_output_shapes
:*
dtype0
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ћ
save/Assign_4Assigndnn/hiddenlayer_2/biases/part_0save/RestoreV2_4*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
use_locking(*
_output_shapes
:2*
T0*
validate_shape(

save/RestoreV2_5/tensor_namesConst*.
value%B#Bdnn/hiddenlayer_2/weights*
_output_shapes
:*
dtype0
y
!save/RestoreV2_5/shape_and_slicesConst*$
valueBB70 50 0,70:0,50*
_output_shapes
:*
dtype0
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
“
save/Assign_5Assign dnn/hiddenlayer_2/weights/part_0save/RestoreV2_5*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
use_locking(*
_output_shapes

:F2*
T0*
validate_shape(
~
save/RestoreV2_6/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_3/biases*
_output_shapes
:*
dtype0
q
!save/RestoreV2_6/shape_and_slicesConst*
valueBB25 0,25*
_output_shapes
:*
dtype0
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
ћ
save/Assign_6Assigndnn/hiddenlayer_3/biases/part_0save/RestoreV2_6*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
use_locking(*
_output_shapes
:*
T0*
validate_shape(

save/RestoreV2_7/tensor_namesConst*.
value%B#Bdnn/hiddenlayer_3/weights*
_output_shapes
:*
dtype0
y
!save/RestoreV2_7/shape_and_slicesConst*$
valueBB50 25 0,50:0,25*
_output_shapes
:*
dtype0
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
“
save/Assign_7Assign dnn/hiddenlayer_3/weights/part_0save/RestoreV2_7*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
use_locking(*
_output_shapes

:2*
T0*
validate_shape(
w
save/RestoreV2_8/tensor_namesConst*&
valueBBdnn/logits/biases*
_output_shapes
:*
dtype0
o
!save/RestoreV2_8/shape_and_slicesConst*
valueBB1 0,1*
_output_shapes
:*
dtype0
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Њ
save/Assign_8Assigndnn/logits/biases/part_0save/RestoreV2_8*+
_class!
loc:@dnn/logits/biases/part_0*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
x
save/RestoreV2_9/tensor_namesConst*'
valueBBdnn/logits/weights*
_output_shapes
:*
dtype0
w
!save/RestoreV2_9/shape_and_slicesConst*"
valueBB25 1 0,25:0,1*
_output_shapes
:*
dtype0
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
ƒ
save/Assign_9Assigndnn/logits/weights/part_0save/RestoreV2_9*,
_class"
 loc:@dnn/logits/weights/part_0*
use_locking(*
_output_shapes

:*
T0*
validate_shape(
r
save/RestoreV2_10/tensor_namesConst* 
valueBBglobal_step*
_output_shapes
:*
dtype0
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2	*
_output_shapes
:
Ґ
save/Assign_10Assignglobal_stepsave/RestoreV2_10*
_class
loc:@global_step*
use_locking(*
_output_shapes
: *
T0	*
validate_shape(
Е
save/RestoreV2_11/tensor_namesConst*3
value*B(Blinear/linear_model/C1/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_11/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
я
save/Assign_11Assign%linear/linear_model/C1/weights/part_0save/RestoreV2_11*8
_class.
,*loc:@linear/linear_model/C1/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_12/tensor_namesConst*4
value+B)Blinear/linear_model/C10/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_12/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_12Assign&linear/linear_model/C10/weights/part_0save/RestoreV2_12*9
_class/
-+loc:@linear/linear_model/C10/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Р
save/RestoreV2_13/tensor_namesConst*>
value5B3B)linear/linear_model/C10_X_C4_X_C5/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_13/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
х
save/Assign_13Assign0linear/linear_model/C10_X_C4_X_C5/weights/part_0save/RestoreV2_13*C
_class9
75loc:@linear/linear_model/C10_X_C4_X_C5/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_14/tensor_namesConst*4
value+B)Blinear/linear_model/C11/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_14/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_14Assign&linear/linear_model/C11/weights/part_0save/RestoreV2_14*9
_class/
-+loc:@linear/linear_model/C11/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_15/tensor_namesConst*4
value+B)Blinear/linear_model/C12/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_15/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_15Assign&linear/linear_model/C12/weights/part_0save/RestoreV2_15*9
_class/
-+loc:@linear/linear_model/C12/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_16/tensor_namesConst*4
value+B)Blinear/linear_model/C13/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_16/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_16Assign&linear/linear_model/C13/weights/part_0save/RestoreV2_16*9
_class/
-+loc:@linear/linear_model/C13/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_17/tensor_namesConst*4
value+B)Blinear/linear_model/C14/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_17/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_17Assign&linear/linear_model/C14/weights/part_0save/RestoreV2_17*9
_class/
-+loc:@linear/linear_model/C14/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_18/tensor_namesConst*4
value+B)Blinear/linear_model/C15/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_18/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_18Assign&linear/linear_model/C15/weights/part_0save/RestoreV2_18*9
_class/
-+loc:@linear/linear_model/C15/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_19/tensor_namesConst*4
value+B)Blinear/linear_model/C16/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_19/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_19Assign&linear/linear_model/C16/weights/part_0save/RestoreV2_19*9
_class/
-+loc:@linear/linear_model/C16/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_20/tensor_namesConst*4
value+B)Blinear/linear_model/C17/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_20/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_20Assign&linear/linear_model/C17/weights/part_0save/RestoreV2_20*9
_class/
-+loc:@linear/linear_model/C17/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_21/tensor_namesConst*4
value+B)Blinear/linear_model/C18/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_21/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_21Assign&linear/linear_model/C18/weights/part_0save/RestoreV2_21*9
_class/
-+loc:@linear/linear_model/C18/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_22/tensor_namesConst*4
value+B)Blinear/linear_model/C19/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_22/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_22Assign&linear/linear_model/C19/weights/part_0save/RestoreV2_22*9
_class/
-+loc:@linear/linear_model/C19/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
К
save/RestoreV2_23/tensor_namesConst*8
value/B-B#linear/linear_model/C1_X_C1/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_23/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_23Assign*linear/linear_model/C1_X_C1/weights/part_0save/RestoreV2_23*=
_class3
1/loc:@linear/linear_model/C1_X_C1/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Е
save/RestoreV2_24/tensor_namesConst*3
value*B(Blinear/linear_model/C2/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_24/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
я
save/Assign_24Assign%linear/linear_model/C2/weights/part_0save/RestoreV2_24*8
_class.
,*loc:@linear/linear_model/C2/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_25/tensor_namesConst*4
value+B)Blinear/linear_model/C20/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_25/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_25Assign&linear/linear_model/C20/weights/part_0save/RestoreV2_25*9
_class/
-+loc:@linear/linear_model/C20/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_26/tensor_namesConst*4
value+B)Blinear/linear_model/C21/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_26/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_26Assign&linear/linear_model/C21/weights/part_0save/RestoreV2_26*9
_class/
-+loc:@linear/linear_model/C21/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_27/tensor_namesConst*4
value+B)Blinear/linear_model/C22/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_27/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_27Assign&linear/linear_model/C22/weights/part_0save/RestoreV2_27*9
_class/
-+loc:@linear/linear_model/C22/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_28/tensor_namesConst*4
value+B)Blinear/linear_model/C23/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_28/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_28Assign&linear/linear_model/C23/weights/part_0save/RestoreV2_28*9
_class/
-+loc:@linear/linear_model/C23/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_29/tensor_namesConst*4
value+B)Blinear/linear_model/C24/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_29/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_29Assign&linear/linear_model/C24/weights/part_0save/RestoreV2_29*9
_class/
-+loc:@linear/linear_model/C24/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_30/tensor_namesConst*4
value+B)Blinear/linear_model/C25/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_30/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_30Assign&linear/linear_model/C25/weights/part_0save/RestoreV2_30*9
_class/
-+loc:@linear/linear_model/C25/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Ж
save/RestoreV2_31/tensor_namesConst*4
value+B)Blinear/linear_model/C26/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_31/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_31Assign&linear/linear_model/C26/weights/part_0save/RestoreV2_31*9
_class/
-+loc:@linear/linear_model/C26/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Е
save/RestoreV2_32/tensor_namesConst*3
value*B(Blinear/linear_model/C3/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_32/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
я
save/Assign_32Assign%linear/linear_model/C3/weights/part_0save/RestoreV2_32*8
_class.
,*loc:@linear/linear_model/C3/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Е
save/RestoreV2_33/tensor_namesConst*3
value*B(Blinear/linear_model/C4/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_33/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
я
save/Assign_33Assign%linear/linear_model/C4/weights/part_0save/RestoreV2_33*8
_class.
,*loc:@linear/linear_model/C4/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Е
save/RestoreV2_34/tensor_namesConst*3
value*B(Blinear/linear_model/C5/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_34/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
я
save/Assign_34Assign%linear/linear_model/C5/weights/part_0save/RestoreV2_34*8
_class.
,*loc:@linear/linear_model/C5/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Е
save/RestoreV2_35/tensor_namesConst*3
value*B(Blinear/linear_model/C6/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_35/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
я
save/Assign_35Assign%linear/linear_model/C6/weights/part_0save/RestoreV2_35*8
_class.
,*loc:@linear/linear_model/C6/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Е
save/RestoreV2_36/tensor_namesConst*3
value*B(Blinear/linear_model/C7/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_36/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
я
save/Assign_36Assign%linear/linear_model/C7/weights/part_0save/RestoreV2_36*8
_class.
,*loc:@linear/linear_model/C7/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Е
save/RestoreV2_37/tensor_namesConst*3
value*B(Blinear/linear_model/C8/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_37/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
я
save/Assign_37Assign%linear/linear_model/C8/weights/part_0save/RestoreV2_37*8
_class.
,*loc:@linear/linear_model/C8/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Е
save/RestoreV2_38/tensor_namesConst*3
value*B(Blinear/linear_model/C9/weights*
_output_shapes
:*
dtype0
|
"save/RestoreV2_38/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
я
save/Assign_38Assign%linear/linear_model/C9/weights/part_0save/RestoreV2_38*8
_class.
,*loc:@linear/linear_model/C9/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
З
save/RestoreV2_39/tensor_namesConst*5
value,B*B linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
p
"save/RestoreV2_39/shape_and_slicesConst*
valueBB1 0,1*
_output_shapes
:*
dtype0
Щ
save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
ё
save/Assign_39Assign'linear/linear_model/bias_weights/part_0save/RestoreV2_39*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
ґ
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_1NoOp

init_all_tablesNoOp
4

group_depsNoOp^init^init_1^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_2e1027340c904915881222bcda036c20/part*
_output_shapes
: *
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
^
save_1/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ѓ

save_1/SaveV2/tensor_namesConst*а	
value÷	B”	(Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBdnn/hiddenlayer_3/biasesBdnn/hiddenlayer_3/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepBlinear/linear_model/C1/weightsBlinear/linear_model/C10/weightsB)linear/linear_model/C10_X_C4_X_C5/weightsBlinear/linear_model/C11/weightsBlinear/linear_model/C12/weightsBlinear/linear_model/C13/weightsBlinear/linear_model/C14/weightsBlinear/linear_model/C15/weightsBlinear/linear_model/C16/weightsBlinear/linear_model/C17/weightsBlinear/linear_model/C18/weightsBlinear/linear_model/C19/weightsB#linear/linear_model/C1_X_C1/weightsBlinear/linear_model/C2/weightsBlinear/linear_model/C20/weightsBlinear/linear_model/C21/weightsBlinear/linear_model/C22/weightsBlinear/linear_model/C23/weightsBlinear/linear_model/C24/weightsBlinear/linear_model/C25/weightsBlinear/linear_model/C26/weightsBlinear/linear_model/C3/weightsBlinear/linear_model/C4/weightsBlinear/linear_model/C5/weightsBlinear/linear_model/C6/weightsBlinear/linear_model/C7/weightsBlinear/linear_model/C8/weightsBlinear/linear_model/C9/weightsB linear/linear_model/bias_weights*
_output_shapes
:(*
dtype0
Й
save_1/SaveV2/shape_and_slicesConst*ґ
valueђB©(B	100 0,100B13 100 0,13:0,100B70 0,70B100 70 0,100:0,70B50 0,50B70 50 0,70:0,50B25 0,25B50 25 0,50:0,25B1 0,1B25 1 0,25:0,1B B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1 0,1*
_output_shapes
:(*
dtype0
¬
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/read$dnn/hiddenlayer_2/biases/part_0/read%dnn/hiddenlayer_2/weights/part_0/read$dnn/hiddenlayer_3/biases/part_0/read%dnn/hiddenlayer_3/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_step*linear/linear_model/C1/weights/part_0/read+linear/linear_model/C10/weights/part_0/read5linear/linear_model/C10_X_C4_X_C5/weights/part_0/read+linear/linear_model/C11/weights/part_0/read+linear/linear_model/C12/weights/part_0/read+linear/linear_model/C13/weights/part_0/read+linear/linear_model/C14/weights/part_0/read+linear/linear_model/C15/weights/part_0/read+linear/linear_model/C16/weights/part_0/read+linear/linear_model/C17/weights/part_0/read+linear/linear_model/C18/weights/part_0/read+linear/linear_model/C19/weights/part_0/read/linear/linear_model/C1_X_C1/weights/part_0/read*linear/linear_model/C2/weights/part_0/read+linear/linear_model/C20/weights/part_0/read+linear/linear_model/C21/weights/part_0/read+linear/linear_model/C22/weights/part_0/read+linear/linear_model/C23/weights/part_0/read+linear/linear_model/C24/weights/part_0/read+linear/linear_model/C25/weights/part_0/read+linear/linear_model/C26/weights/part_0/read*linear/linear_model/C3/weights/part_0/read*linear/linear_model/C4/weights/part_0/read*linear/linear_model/C5/weights/part_0/read*linear/linear_model/C6/weights/part_0/read*linear/linear_model/C7/weights/part_0/read*linear/linear_model/C8/weights/part_0/read*linear/linear_model/C9/weights/part_0/read,linear/linear_model/bias_weights/part_0/read*6
dtypes,
*2(	
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: *
T0
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*

axis *
_output_shapes
:*
T0
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
_output_shapes
: *
T0
~
save_1/RestoreV2/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/biases*
_output_shapes
:*
dtype0
s
!save_1/RestoreV2/shape_and_slicesConst*
valueBB	100 0,100*
_output_shapes
:*
dtype0
Ш
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
ћ
save_1/AssignAssigndnn/hiddenlayer_0/biases/part_0save_1/RestoreV2*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
use_locking(*
_output_shapes
:d*
T0*
validate_shape(
Б
save_1/RestoreV2_1/tensor_namesConst*.
value%B#Bdnn/hiddenlayer_0/weights*
_output_shapes
:*
dtype0
}
#save_1/RestoreV2_1/shape_and_slicesConst*&
valueBB13 100 0,13:0,100*
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
÷
save_1/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save_1/RestoreV2_1*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
use_locking(*
_output_shapes

:d*
T0*
validate_shape(
А
save_1/RestoreV2_2/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/biases*
_output_shapes
:*
dtype0
s
#save_1/RestoreV2_2/shape_and_slicesConst*
valueBB70 0,70*
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
–
save_1/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save_1/RestoreV2_2*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
use_locking(*
_output_shapes
:F*
T0*
validate_shape(
Б
save_1/RestoreV2_3/tensor_namesConst*.
value%B#Bdnn/hiddenlayer_1/weights*
_output_shapes
:*
dtype0
}
#save_1/RestoreV2_3/shape_and_slicesConst*&
valueBB100 70 0,100:0,70*
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
÷
save_1/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save_1/RestoreV2_3*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
use_locking(*
_output_shapes

:dF*
T0*
validate_shape(
А
save_1/RestoreV2_4/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_2/biases*
_output_shapes
:*
dtype0
s
#save_1/RestoreV2_4/shape_and_slicesConst*
valueBB50 0,50*
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
–
save_1/Assign_4Assigndnn/hiddenlayer_2/biases/part_0save_1/RestoreV2_4*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
use_locking(*
_output_shapes
:2*
T0*
validate_shape(
Б
save_1/RestoreV2_5/tensor_namesConst*.
value%B#Bdnn/hiddenlayer_2/weights*
_output_shapes
:*
dtype0
{
#save_1/RestoreV2_5/shape_and_slicesConst*$
valueBB70 50 0,70:0,50*
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
÷
save_1/Assign_5Assign dnn/hiddenlayer_2/weights/part_0save_1/RestoreV2_5*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
use_locking(*
_output_shapes

:F2*
T0*
validate_shape(
А
save_1/RestoreV2_6/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_3/biases*
_output_shapes
:*
dtype0
s
#save_1/RestoreV2_6/shape_and_slicesConst*
valueBB25 0,25*
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
–
save_1/Assign_6Assigndnn/hiddenlayer_3/biases/part_0save_1/RestoreV2_6*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
Б
save_1/RestoreV2_7/tensor_namesConst*.
value%B#Bdnn/hiddenlayer_3/weights*
_output_shapes
:*
dtype0
{
#save_1/RestoreV2_7/shape_and_slicesConst*$
valueBB50 25 0,50:0,25*
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
÷
save_1/Assign_7Assign dnn/hiddenlayer_3/weights/part_0save_1/RestoreV2_7*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
use_locking(*
_output_shapes

:2*
T0*
validate_shape(
y
save_1/RestoreV2_8/tensor_namesConst*&
valueBBdnn/logits/biases*
_output_shapes
:*
dtype0
q
#save_1/RestoreV2_8/shape_and_slicesConst*
valueBB1 0,1*
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
¬
save_1/Assign_8Assigndnn/logits/biases/part_0save_1/RestoreV2_8*+
_class!
loc:@dnn/logits/biases/part_0*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
z
save_1/RestoreV2_9/tensor_namesConst*'
valueBBdnn/logits/weights*
_output_shapes
:*
dtype0
y
#save_1/RestoreV2_9/shape_and_slicesConst*"
valueBB25 1 0,25:0,1*
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
»
save_1/Assign_9Assigndnn/logits/weights/part_0save_1/RestoreV2_9*,
_class"
 loc:@dnn/logits/weights/part_0*
use_locking(*
_output_shapes

:*
T0*
validate_shape(
t
 save_1/RestoreV2_10/tensor_namesConst* 
valueBBglobal_step*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
°
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2	*
_output_shapes
:
¶
save_1/Assign_10Assignglobal_stepsave_1/RestoreV2_10*
_class
loc:@global_step*
use_locking(*
_output_shapes
: *
T0	*
validate_shape(
З
 save_1/RestoreV2_11/tensor_namesConst*3
value*B(Blinear/linear_model/C1/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_11/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save_1/Assign_11Assign%linear/linear_model/C1/weights/part_0save_1/RestoreV2_11*8
_class.
,*loc:@linear/linear_model/C1/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_12/tensor_namesConst*4
value+B)Blinear/linear_model/C10/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_12/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_12Assign&linear/linear_model/C10/weights/part_0save_1/RestoreV2_12*9
_class/
-+loc:@linear/linear_model/C10/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Т
 save_1/RestoreV2_13/tensor_namesConst*>
value5B3B)linear/linear_model/C10_X_C4_X_C5/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_13/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
щ
save_1/Assign_13Assign0linear/linear_model/C10_X_C4_X_C5/weights/part_0save_1/RestoreV2_13*C
_class9
75loc:@linear/linear_model/C10_X_C4_X_C5/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_14/tensor_namesConst*4
value+B)Blinear/linear_model/C11/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_14/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_14Assign&linear/linear_model/C11/weights/part_0save_1/RestoreV2_14*9
_class/
-+loc:@linear/linear_model/C11/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_15/tensor_namesConst*4
value+B)Blinear/linear_model/C12/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_15/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_15Assign&linear/linear_model/C12/weights/part_0save_1/RestoreV2_15*9
_class/
-+loc:@linear/linear_model/C12/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_16/tensor_namesConst*4
value+B)Blinear/linear_model/C13/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_16/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_16Assign&linear/linear_model/C13/weights/part_0save_1/RestoreV2_16*9
_class/
-+loc:@linear/linear_model/C13/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_17/tensor_namesConst*4
value+B)Blinear/linear_model/C14/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_17/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_17Assign&linear/linear_model/C14/weights/part_0save_1/RestoreV2_17*9
_class/
-+loc:@linear/linear_model/C14/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_18/tensor_namesConst*4
value+B)Blinear/linear_model/C15/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_18/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_18Assign&linear/linear_model/C15/weights/part_0save_1/RestoreV2_18*9
_class/
-+loc:@linear/linear_model/C15/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_19/tensor_namesConst*4
value+B)Blinear/linear_model/C16/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_19/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_19Assign&linear/linear_model/C16/weights/part_0save_1/RestoreV2_19*9
_class/
-+loc:@linear/linear_model/C16/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_20/tensor_namesConst*4
value+B)Blinear/linear_model/C17/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_20/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_20Assign&linear/linear_model/C17/weights/part_0save_1/RestoreV2_20*9
_class/
-+loc:@linear/linear_model/C17/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_21/tensor_namesConst*4
value+B)Blinear/linear_model/C18/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_21/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_21Assign&linear/linear_model/C18/weights/part_0save_1/RestoreV2_21*9
_class/
-+loc:@linear/linear_model/C18/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_22/tensor_namesConst*4
value+B)Blinear/linear_model/C19/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_22/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_22Assign&linear/linear_model/C19/weights/part_0save_1/RestoreV2_22*9
_class/
-+loc:@linear/linear_model/C19/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
М
 save_1/RestoreV2_23/tensor_namesConst*8
value/B-B#linear/linear_model/C1_X_C1/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_23/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
н
save_1/Assign_23Assign*linear/linear_model/C1_X_C1/weights/part_0save_1/RestoreV2_23*=
_class3
1/loc:@linear/linear_model/C1_X_C1/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
З
 save_1/RestoreV2_24/tensor_namesConst*3
value*B(Blinear/linear_model/C2/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_24/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save_1/Assign_24Assign%linear/linear_model/C2/weights/part_0save_1/RestoreV2_24*8
_class.
,*loc:@linear/linear_model/C2/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_25/tensor_namesConst*4
value+B)Blinear/linear_model/C20/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_25/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_25Assign&linear/linear_model/C20/weights/part_0save_1/RestoreV2_25*9
_class/
-+loc:@linear/linear_model/C20/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_26/tensor_namesConst*4
value+B)Blinear/linear_model/C21/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_26/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_26Assign&linear/linear_model/C21/weights/part_0save_1/RestoreV2_26*9
_class/
-+loc:@linear/linear_model/C21/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_27/tensor_namesConst*4
value+B)Blinear/linear_model/C22/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_27/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_27Assign&linear/linear_model/C22/weights/part_0save_1/RestoreV2_27*9
_class/
-+loc:@linear/linear_model/C22/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_28/tensor_namesConst*4
value+B)Blinear/linear_model/C23/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_28/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_28Assign&linear/linear_model/C23/weights/part_0save_1/RestoreV2_28*9
_class/
-+loc:@linear/linear_model/C23/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_29/tensor_namesConst*4
value+B)Blinear/linear_model/C24/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_29/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_29Assign&linear/linear_model/C24/weights/part_0save_1/RestoreV2_29*9
_class/
-+loc:@linear/linear_model/C24/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_30/tensor_namesConst*4
value+B)Blinear/linear_model/C25/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_30/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_30Assign&linear/linear_model/C25/weights/part_0save_1/RestoreV2_30*9
_class/
-+loc:@linear/linear_model/C25/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
И
 save_1/RestoreV2_31/tensor_namesConst*4
value+B)Blinear/linear_model/C26/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_31/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save_1/Assign_31Assign&linear/linear_model/C26/weights/part_0save_1/RestoreV2_31*9
_class/
-+loc:@linear/linear_model/C26/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
З
 save_1/RestoreV2_32/tensor_namesConst*3
value*B(Blinear/linear_model/C3/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_32/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save_1/Assign_32Assign%linear/linear_model/C3/weights/part_0save_1/RestoreV2_32*8
_class.
,*loc:@linear/linear_model/C3/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
З
 save_1/RestoreV2_33/tensor_namesConst*3
value*B(Blinear/linear_model/C4/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_33/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save_1/Assign_33Assign%linear/linear_model/C4/weights/part_0save_1/RestoreV2_33*8
_class.
,*loc:@linear/linear_model/C4/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
З
 save_1/RestoreV2_34/tensor_namesConst*3
value*B(Blinear/linear_model/C5/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_34/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save_1/Assign_34Assign%linear/linear_model/C5/weights/part_0save_1/RestoreV2_34*8
_class.
,*loc:@linear/linear_model/C5/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
З
 save_1/RestoreV2_35/tensor_namesConst*3
value*B(Blinear/linear_model/C6/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_35/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_35	RestoreV2save_1/Const save_1/RestoreV2_35/tensor_names$save_1/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save_1/Assign_35Assign%linear/linear_model/C6/weights/part_0save_1/RestoreV2_35*8
_class.
,*loc:@linear/linear_model/C6/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
З
 save_1/RestoreV2_36/tensor_namesConst*3
value*B(Blinear/linear_model/C7/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_36/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save_1/Assign_36Assign%linear/linear_model/C7/weights/part_0save_1/RestoreV2_36*8
_class.
,*loc:@linear/linear_model/C7/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
З
 save_1/RestoreV2_37/tensor_namesConst*3
value*B(Blinear/linear_model/C8/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_37/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save_1/Assign_37Assign%linear/linear_model/C8/weights/part_0save_1/RestoreV2_37*8
_class.
,*loc:@linear/linear_model/C8/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
З
 save_1/RestoreV2_38/tensor_namesConst*3
value*B(Blinear/linear_model/C9/weights*
_output_shapes
:*
dtype0
~
$save_1/RestoreV2_38/shape_and_slicesConst*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save_1/Assign_38Assign%linear/linear_model/C9/weights/part_0save_1/RestoreV2_38*8
_class.
,*loc:@linear/linear_model/C9/weights/part_0*
use_locking(*
_output_shapes
:	и*
T0*
validate_shape(
Й
 save_1/RestoreV2_39/tensor_namesConst*5
value,B*B linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
r
$save_1/RestoreV2_39/shape_and_slicesConst*
valueBB1 0,1*
_output_shapes
:*
dtype0
°
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
в
save_1/Assign_39Assign'linear/linear_model/bias_weights/part_0save_1/RestoreV2_39*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
И
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"т6
trainable_variablesЏ6„6
Я
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weightsd  "d
Ш
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biasesd "d
Я
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weightsdF  "dF
Ш
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biasesF "F
Я
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weightsF2  "F2
Ш
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases2 "2
Я
"dnn/hiddenlayer_3/weights/part_0:0'dnn/hiddenlayer_3/weights/part_0/Assign'dnn/hiddenlayer_3/weights/part_0/read:0"'
dnn/hiddenlayer_3/weights2  "2
Ш
!dnn/hiddenlayer_3/biases/part_0:0&dnn/hiddenlayer_3/biases/part_0/Assign&dnn/hiddenlayer_3/biases/part_0/read:0"#
dnn/hiddenlayer_3/biases "
Г
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights  "
|
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "
µ
'linear/linear_model/C1/weights/part_0:0,linear/linear_model/C1/weights/part_0/Assign,linear/linear_model/C1/weights/part_0/read:0".
linear/linear_model/C1/weightsи  "и
є
(linear/linear_model/C10/weights/part_0:0-linear/linear_model/C10/weights/part_0/Assign-linear/linear_model/C10/weights/part_0/read:0"/
linear/linear_model/C10/weightsи  "и
б
2linear/linear_model/C10_X_C4_X_C5/weights/part_0:07linear/linear_model/C10_X_C4_X_C5/weights/part_0/Assign7linear/linear_model/C10_X_C4_X_C5/weights/part_0/read:0"9
)linear/linear_model/C10_X_C4_X_C5/weightsи  "и
є
(linear/linear_model/C11/weights/part_0:0-linear/linear_model/C11/weights/part_0/Assign-linear/linear_model/C11/weights/part_0/read:0"/
linear/linear_model/C11/weightsи  "и
є
(linear/linear_model/C12/weights/part_0:0-linear/linear_model/C12/weights/part_0/Assign-linear/linear_model/C12/weights/part_0/read:0"/
linear/linear_model/C12/weightsи  "и
є
(linear/linear_model/C13/weights/part_0:0-linear/linear_model/C13/weights/part_0/Assign-linear/linear_model/C13/weights/part_0/read:0"/
linear/linear_model/C13/weightsи  "и
є
(linear/linear_model/C14/weights/part_0:0-linear/linear_model/C14/weights/part_0/Assign-linear/linear_model/C14/weights/part_0/read:0"/
linear/linear_model/C14/weightsи  "и
є
(linear/linear_model/C15/weights/part_0:0-linear/linear_model/C15/weights/part_0/Assign-linear/linear_model/C15/weights/part_0/read:0"/
linear/linear_model/C15/weightsи  "и
є
(linear/linear_model/C16/weights/part_0:0-linear/linear_model/C16/weights/part_0/Assign-linear/linear_model/C16/weights/part_0/read:0"/
linear/linear_model/C16/weightsи  "и
є
(linear/linear_model/C17/weights/part_0:0-linear/linear_model/C17/weights/part_0/Assign-linear/linear_model/C17/weights/part_0/read:0"/
linear/linear_model/C17/weightsи  "и
є
(linear/linear_model/C18/weights/part_0:0-linear/linear_model/C18/weights/part_0/Assign-linear/linear_model/C18/weights/part_0/read:0"/
linear/linear_model/C18/weightsи  "и
є
(linear/linear_model/C19/weights/part_0:0-linear/linear_model/C19/weights/part_0/Assign-linear/linear_model/C19/weights/part_0/read:0"/
linear/linear_model/C19/weightsи  "и
…
,linear/linear_model/C1_X_C1/weights/part_0:01linear/linear_model/C1_X_C1/weights/part_0/Assign1linear/linear_model/C1_X_C1/weights/part_0/read:0"3
#linear/linear_model/C1_X_C1/weightsи  "и
µ
'linear/linear_model/C2/weights/part_0:0,linear/linear_model/C2/weights/part_0/Assign,linear/linear_model/C2/weights/part_0/read:0".
linear/linear_model/C2/weightsи  "и
є
(linear/linear_model/C20/weights/part_0:0-linear/linear_model/C20/weights/part_0/Assign-linear/linear_model/C20/weights/part_0/read:0"/
linear/linear_model/C20/weightsи  "и
є
(linear/linear_model/C21/weights/part_0:0-linear/linear_model/C21/weights/part_0/Assign-linear/linear_model/C21/weights/part_0/read:0"/
linear/linear_model/C21/weightsи  "и
є
(linear/linear_model/C22/weights/part_0:0-linear/linear_model/C22/weights/part_0/Assign-linear/linear_model/C22/weights/part_0/read:0"/
linear/linear_model/C22/weightsи  "и
є
(linear/linear_model/C23/weights/part_0:0-linear/linear_model/C23/weights/part_0/Assign-linear/linear_model/C23/weights/part_0/read:0"/
linear/linear_model/C23/weightsи  "и
є
(linear/linear_model/C24/weights/part_0:0-linear/linear_model/C24/weights/part_0/Assign-linear/linear_model/C24/weights/part_0/read:0"/
linear/linear_model/C24/weightsи  "и
є
(linear/linear_model/C25/weights/part_0:0-linear/linear_model/C25/weights/part_0/Assign-linear/linear_model/C25/weights/part_0/read:0"/
linear/linear_model/C25/weightsи  "и
є
(linear/linear_model/C26/weights/part_0:0-linear/linear_model/C26/weights/part_0/Assign-linear/linear_model/C26/weights/part_0/read:0"/
linear/linear_model/C26/weightsи  "и
µ
'linear/linear_model/C3/weights/part_0:0,linear/linear_model/C3/weights/part_0/Assign,linear/linear_model/C3/weights/part_0/read:0".
linear/linear_model/C3/weightsи  "и
µ
'linear/linear_model/C4/weights/part_0:0,linear/linear_model/C4/weights/part_0/Assign,linear/linear_model/C4/weights/part_0/read:0".
linear/linear_model/C4/weightsи  "и
µ
'linear/linear_model/C5/weights/part_0:0,linear/linear_model/C5/weights/part_0/Assign,linear/linear_model/C5/weights/part_0/read:0".
linear/linear_model/C5/weightsи  "и
µ
'linear/linear_model/C6/weights/part_0:0,linear/linear_model/C6/weights/part_0/Assign,linear/linear_model/C6/weights/part_0/read:0".
linear/linear_model/C6/weightsи  "и
µ
'linear/linear_model/C7/weights/part_0:0,linear/linear_model/C7/weights/part_0/Assign,linear/linear_model/C7/weights/part_0/read:0".
linear/linear_model/C7/weightsи  "и
µ
'linear/linear_model/C8/weights/part_0:0,linear/linear_model/C8/weights/part_0/Assign,linear/linear_model/C8/weights/part_0/read:0".
linear/linear_model/C8/weightsи  "и
µ
'linear/linear_model/C9/weights/part_0:0,linear/linear_model/C9/weights/part_0/Assign,linear/linear_model/C9/weights/part_0/read:0".
linear/linear_model/C9/weightsи  "и
Є
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights ""÷	
linearЋ	
»	
'linear/linear_model/C1/weights/part_0:0
(linear/linear_model/C10/weights/part_0:0
2linear/linear_model/C10_X_C4_X_C5/weights/part_0:0
(linear/linear_model/C11/weights/part_0:0
(linear/linear_model/C12/weights/part_0:0
(linear/linear_model/C13/weights/part_0:0
(linear/linear_model/C14/weights/part_0:0
(linear/linear_model/C15/weights/part_0:0
(linear/linear_model/C16/weights/part_0:0
(linear/linear_model/C17/weights/part_0:0
(linear/linear_model/C18/weights/part_0:0
(linear/linear_model/C19/weights/part_0:0
,linear/linear_model/C1_X_C1/weights/part_0:0
'linear/linear_model/C2/weights/part_0:0
(linear/linear_model/C20/weights/part_0:0
(linear/linear_model/C21/weights/part_0:0
(linear/linear_model/C22/weights/part_0:0
(linear/linear_model/C23/weights/part_0:0
(linear/linear_model/C24/weights/part_0:0
(linear/linear_model/C25/weights/part_0:0
(linear/linear_model/C26/weights/part_0:0
'linear/linear_model/C3/weights/part_0:0
'linear/linear_model/C4/weights/part_0:0
'linear/linear_model/C5/weights/part_0:0
'linear/linear_model/C6/weights/part_0:0
'linear/linear_model/C7/weights/part_0:0
'linear/linear_model/C8/weights/part_0:0
'linear/linear_model/C9/weights/part_0:0
)linear/linear_model/bias_weights/part_0:0"с
	summariesг
а
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"Ћ
input_feature_keysі±
I7
C13
I4
C19
C9
C5
I9
I11
C17
C1
I6
I1
C10
I3
C7
C11
C3
C16
C6
C25
I12
C8
C24
C26
C2
C23
C14
C12
I2
C4
C22
I13
C15
I10
I5
C21
I8
C20
C18"а
dnnЎ
’
"dnn/hiddenlayer_0/weights/part_0:0
!dnn/hiddenlayer_0/biases/part_0:0
"dnn/hiddenlayer_1/weights/part_0:0
!dnn/hiddenlayer_1/biases/part_0:0
"dnn/hiddenlayer_2/weights/part_0:0
!dnn/hiddenlayer_2/biases/part_0:0
"dnn/hiddenlayer_3/weights/part_0:0
!dnn/hiddenlayer_3/biases/part_0:0
dnn/logits/weights/part_0:0
dnn/logits/biases/part_0:0"о6
model_variablesЏ6„6
Я
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weightsd  "d
Ш
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biasesd "d
Я
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weightsdF  "dF
Ш
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biasesF "F
Я
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weightsF2  "F2
Ш
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases2 "2
Я
"dnn/hiddenlayer_3/weights/part_0:0'dnn/hiddenlayer_3/weights/part_0/Assign'dnn/hiddenlayer_3/weights/part_0/read:0"'
dnn/hiddenlayer_3/weights2  "2
Ш
!dnn/hiddenlayer_3/biases/part_0:0&dnn/hiddenlayer_3/biases/part_0/Assign&dnn/hiddenlayer_3/biases/part_0/read:0"#
dnn/hiddenlayer_3/biases "
Г
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights  "
|
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "
µ
'linear/linear_model/C1/weights/part_0:0,linear/linear_model/C1/weights/part_0/Assign,linear/linear_model/C1/weights/part_0/read:0".
linear/linear_model/C1/weightsи  "и
є
(linear/linear_model/C10/weights/part_0:0-linear/linear_model/C10/weights/part_0/Assign-linear/linear_model/C10/weights/part_0/read:0"/
linear/linear_model/C10/weightsи  "и
б
2linear/linear_model/C10_X_C4_X_C5/weights/part_0:07linear/linear_model/C10_X_C4_X_C5/weights/part_0/Assign7linear/linear_model/C10_X_C4_X_C5/weights/part_0/read:0"9
)linear/linear_model/C10_X_C4_X_C5/weightsи  "и
є
(linear/linear_model/C11/weights/part_0:0-linear/linear_model/C11/weights/part_0/Assign-linear/linear_model/C11/weights/part_0/read:0"/
linear/linear_model/C11/weightsи  "и
є
(linear/linear_model/C12/weights/part_0:0-linear/linear_model/C12/weights/part_0/Assign-linear/linear_model/C12/weights/part_0/read:0"/
linear/linear_model/C12/weightsи  "и
є
(linear/linear_model/C13/weights/part_0:0-linear/linear_model/C13/weights/part_0/Assign-linear/linear_model/C13/weights/part_0/read:0"/
linear/linear_model/C13/weightsи  "и
є
(linear/linear_model/C14/weights/part_0:0-linear/linear_model/C14/weights/part_0/Assign-linear/linear_model/C14/weights/part_0/read:0"/
linear/linear_model/C14/weightsи  "и
є
(linear/linear_model/C15/weights/part_0:0-linear/linear_model/C15/weights/part_0/Assign-linear/linear_model/C15/weights/part_0/read:0"/
linear/linear_model/C15/weightsи  "и
є
(linear/linear_model/C16/weights/part_0:0-linear/linear_model/C16/weights/part_0/Assign-linear/linear_model/C16/weights/part_0/read:0"/
linear/linear_model/C16/weightsи  "и
є
(linear/linear_model/C17/weights/part_0:0-linear/linear_model/C17/weights/part_0/Assign-linear/linear_model/C17/weights/part_0/read:0"/
linear/linear_model/C17/weightsи  "и
є
(linear/linear_model/C18/weights/part_0:0-linear/linear_model/C18/weights/part_0/Assign-linear/linear_model/C18/weights/part_0/read:0"/
linear/linear_model/C18/weightsи  "и
є
(linear/linear_model/C19/weights/part_0:0-linear/linear_model/C19/weights/part_0/Assign-linear/linear_model/C19/weights/part_0/read:0"/
linear/linear_model/C19/weightsи  "и
…
,linear/linear_model/C1_X_C1/weights/part_0:01linear/linear_model/C1_X_C1/weights/part_0/Assign1linear/linear_model/C1_X_C1/weights/part_0/read:0"3
#linear/linear_model/C1_X_C1/weightsи  "и
µ
'linear/linear_model/C2/weights/part_0:0,linear/linear_model/C2/weights/part_0/Assign,linear/linear_model/C2/weights/part_0/read:0".
linear/linear_model/C2/weightsи  "и
є
(linear/linear_model/C20/weights/part_0:0-linear/linear_model/C20/weights/part_0/Assign-linear/linear_model/C20/weights/part_0/read:0"/
linear/linear_model/C20/weightsи  "и
є
(linear/linear_model/C21/weights/part_0:0-linear/linear_model/C21/weights/part_0/Assign-linear/linear_model/C21/weights/part_0/read:0"/
linear/linear_model/C21/weightsи  "и
є
(linear/linear_model/C22/weights/part_0:0-linear/linear_model/C22/weights/part_0/Assign-linear/linear_model/C22/weights/part_0/read:0"/
linear/linear_model/C22/weightsи  "и
є
(linear/linear_model/C23/weights/part_0:0-linear/linear_model/C23/weights/part_0/Assign-linear/linear_model/C23/weights/part_0/read:0"/
linear/linear_model/C23/weightsи  "и
є
(linear/linear_model/C24/weights/part_0:0-linear/linear_model/C24/weights/part_0/Assign-linear/linear_model/C24/weights/part_0/read:0"/
linear/linear_model/C24/weightsи  "и
є
(linear/linear_model/C25/weights/part_0:0-linear/linear_model/C25/weights/part_0/Assign-linear/linear_model/C25/weights/part_0/read:0"/
linear/linear_model/C25/weightsи  "и
є
(linear/linear_model/C26/weights/part_0:0-linear/linear_model/C26/weights/part_0/Assign-linear/linear_model/C26/weights/part_0/read:0"/
linear/linear_model/C26/weightsи  "и
µ
'linear/linear_model/C3/weights/part_0:0,linear/linear_model/C3/weights/part_0/Assign,linear/linear_model/C3/weights/part_0/read:0".
linear/linear_model/C3/weightsи  "и
µ
'linear/linear_model/C4/weights/part_0:0,linear/linear_model/C4/weights/part_0/Assign,linear/linear_model/C4/weights/part_0/read:0".
linear/linear_model/C4/weightsи  "и
µ
'linear/linear_model/C5/weights/part_0:0,linear/linear_model/C5/weights/part_0/Assign,linear/linear_model/C5/weights/part_0/read:0".
linear/linear_model/C5/weightsи  "и
µ
'linear/linear_model/C6/weights/part_0:0,linear/linear_model/C6/weights/part_0/Assign,linear/linear_model/C6/weights/part_0/read:0".
linear/linear_model/C6/weightsи  "и
µ
'linear/linear_model/C7/weights/part_0:0,linear/linear_model/C7/weights/part_0/Assign,linear/linear_model/C7/weights/part_0/read:0".
linear/linear_model/C7/weightsи  "и
µ
'linear/linear_model/C8/weights/part_0:0,linear/linear_model/C8/weights/part_0/Assign,linear/linear_model/C8/weights/part_0/read:0".
linear/linear_model/C8/weightsи  "и
µ
'linear/linear_model/C9/weights/part_0:0,linear/linear_model/C9/weights/part_0/Assign,linear/linear_model/C9/weights/part_0/read:0".
linear/linear_model/C9/weightsи  "и
Є
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights ""°7
	variablesУ7Р7
7
global_step:0global_step/Assignglobal_step/read:0
Я
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weightsd  "d
Ш
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biasesd "d
Я
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weightsdF  "dF
Ш
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biasesF "F
Я
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weightsF2  "F2
Ш
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases2 "2
Я
"dnn/hiddenlayer_3/weights/part_0:0'dnn/hiddenlayer_3/weights/part_0/Assign'dnn/hiddenlayer_3/weights/part_0/read:0"'
dnn/hiddenlayer_3/weights2  "2
Ш
!dnn/hiddenlayer_3/biases/part_0:0&dnn/hiddenlayer_3/biases/part_0/Assign&dnn/hiddenlayer_3/biases/part_0/read:0"#
dnn/hiddenlayer_3/biases "
Г
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights  "
|
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "
µ
'linear/linear_model/C1/weights/part_0:0,linear/linear_model/C1/weights/part_0/Assign,linear/linear_model/C1/weights/part_0/read:0".
linear/linear_model/C1/weightsи  "и
є
(linear/linear_model/C10/weights/part_0:0-linear/linear_model/C10/weights/part_0/Assign-linear/linear_model/C10/weights/part_0/read:0"/
linear/linear_model/C10/weightsи  "и
б
2linear/linear_model/C10_X_C4_X_C5/weights/part_0:07linear/linear_model/C10_X_C4_X_C5/weights/part_0/Assign7linear/linear_model/C10_X_C4_X_C5/weights/part_0/read:0"9
)linear/linear_model/C10_X_C4_X_C5/weightsи  "и
є
(linear/linear_model/C11/weights/part_0:0-linear/linear_model/C11/weights/part_0/Assign-linear/linear_model/C11/weights/part_0/read:0"/
linear/linear_model/C11/weightsи  "и
є
(linear/linear_model/C12/weights/part_0:0-linear/linear_model/C12/weights/part_0/Assign-linear/linear_model/C12/weights/part_0/read:0"/
linear/linear_model/C12/weightsи  "и
є
(linear/linear_model/C13/weights/part_0:0-linear/linear_model/C13/weights/part_0/Assign-linear/linear_model/C13/weights/part_0/read:0"/
linear/linear_model/C13/weightsи  "и
є
(linear/linear_model/C14/weights/part_0:0-linear/linear_model/C14/weights/part_0/Assign-linear/linear_model/C14/weights/part_0/read:0"/
linear/linear_model/C14/weightsи  "и
є
(linear/linear_model/C15/weights/part_0:0-linear/linear_model/C15/weights/part_0/Assign-linear/linear_model/C15/weights/part_0/read:0"/
linear/linear_model/C15/weightsи  "и
є
(linear/linear_model/C16/weights/part_0:0-linear/linear_model/C16/weights/part_0/Assign-linear/linear_model/C16/weights/part_0/read:0"/
linear/linear_model/C16/weightsи  "и
є
(linear/linear_model/C17/weights/part_0:0-linear/linear_model/C17/weights/part_0/Assign-linear/linear_model/C17/weights/part_0/read:0"/
linear/linear_model/C17/weightsи  "и
є
(linear/linear_model/C18/weights/part_0:0-linear/linear_model/C18/weights/part_0/Assign-linear/linear_model/C18/weights/part_0/read:0"/
linear/linear_model/C18/weightsи  "и
є
(linear/linear_model/C19/weights/part_0:0-linear/linear_model/C19/weights/part_0/Assign-linear/linear_model/C19/weights/part_0/read:0"/
linear/linear_model/C19/weightsи  "и
…
,linear/linear_model/C1_X_C1/weights/part_0:01linear/linear_model/C1_X_C1/weights/part_0/Assign1linear/linear_model/C1_X_C1/weights/part_0/read:0"3
#linear/linear_model/C1_X_C1/weightsи  "и
µ
'linear/linear_model/C2/weights/part_0:0,linear/linear_model/C2/weights/part_0/Assign,linear/linear_model/C2/weights/part_0/read:0".
linear/linear_model/C2/weightsи  "и
є
(linear/linear_model/C20/weights/part_0:0-linear/linear_model/C20/weights/part_0/Assign-linear/linear_model/C20/weights/part_0/read:0"/
linear/linear_model/C20/weightsи  "и
є
(linear/linear_model/C21/weights/part_0:0-linear/linear_model/C21/weights/part_0/Assign-linear/linear_model/C21/weights/part_0/read:0"/
linear/linear_model/C21/weightsи  "и
є
(linear/linear_model/C22/weights/part_0:0-linear/linear_model/C22/weights/part_0/Assign-linear/linear_model/C22/weights/part_0/read:0"/
linear/linear_model/C22/weightsи  "и
є
(linear/linear_model/C23/weights/part_0:0-linear/linear_model/C23/weights/part_0/Assign-linear/linear_model/C23/weights/part_0/read:0"/
linear/linear_model/C23/weightsи  "и
є
(linear/linear_model/C24/weights/part_0:0-linear/linear_model/C24/weights/part_0/Assign-linear/linear_model/C24/weights/part_0/read:0"/
linear/linear_model/C24/weightsи  "и
є
(linear/linear_model/C25/weights/part_0:0-linear/linear_model/C25/weights/part_0/Assign-linear/linear_model/C25/weights/part_0/read:0"/
linear/linear_model/C25/weightsи  "и
є
(linear/linear_model/C26/weights/part_0:0-linear/linear_model/C26/weights/part_0/Assign-linear/linear_model/C26/weights/part_0/read:0"/
linear/linear_model/C26/weightsи  "и
µ
'linear/linear_model/C3/weights/part_0:0,linear/linear_model/C3/weights/part_0/Assign,linear/linear_model/C3/weights/part_0/read:0".
linear/linear_model/C3/weightsи  "и
µ
'linear/linear_model/C4/weights/part_0:0,linear/linear_model/C4/weights/part_0/Assign,linear/linear_model/C4/weights/part_0/read:0".
linear/linear_model/C4/weightsи  "и
µ
'linear/linear_model/C5/weights/part_0:0,linear/linear_model/C5/weights/part_0/Assign,linear/linear_model/C5/weights/part_0/read:0".
linear/linear_model/C5/weightsи  "и
µ
'linear/linear_model/C6/weights/part_0:0,linear/linear_model/C6/weights/part_0/Assign,linear/linear_model/C6/weights/part_0/read:0".
linear/linear_model/C6/weightsи  "и
µ
'linear/linear_model/C7/weights/part_0:0,linear/linear_model/C7/weights/part_0/Assign,linear/linear_model/C7/weights/part_0/read:0".
linear/linear_model/C7/weightsи  "и
µ
'linear/linear_model/C8/weights/part_0:0,linear/linear_model/C8/weights/part_0/Assign,linear/linear_model/C8/weights/part_0/read:0".
linear/linear_model/C8/weightsи  "и
µ
'linear/linear_model/C9/weights/part_0:0,linear/linear_model/C9/weights/part_0/Assign,linear/linear_model/C9/weights/part_0/read:0".
linear/linear_model/C9/weightsи  "и
Є
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "" 
legacy_init_op


group_deps" 
global_step

global_step:0*Ц
serving_defaultВ
(
I7"
Placeholder_6:0€€€€€€€€€
*
C13#
Placeholder_25:0€€€€€€€€€
(
I4"
Placeholder_3:0€€€€€€€€€
*
C19#
Placeholder_31:0€€€€€€€€€
)
C9#
Placeholder_21:0€€€€€€€€€
)
C5#
Placeholder_17:0€€€€€€€€€
(
I9"
Placeholder_8:0€€€€€€€€€
*
I11#
Placeholder_10:0€€€€€€€€€
(
I8"
Placeholder_7:0€€€€€€€€€
*
C17#
Placeholder_29:0€€€€€€€€€
)
C1#
Placeholder_13:0€€€€€€€€€
(
I6"
Placeholder_5:0€€€€€€€€€
&
I1 
Placeholder:0€€€€€€€€€
*
C10#
Placeholder_22:0€€€€€€€€€
(
I3"
Placeholder_2:0€€€€€€€€€
)
C7#
Placeholder_19:0€€€€€€€€€
*
C11#
Placeholder_23:0€€€€€€€€€
)
C3#
Placeholder_15:0€€€€€€€€€
*
C16#
Placeholder_28:0€€€€€€€€€
)
C6#
Placeholder_18:0€€€€€€€€€
*
C25#
Placeholder_37:0€€€€€€€€€
*
I12#
Placeholder_11:0€€€€€€€€€
)
C8#
Placeholder_20:0€€€€€€€€€
*
C24#
Placeholder_36:0€€€€€€€€€
*
C26#
Placeholder_38:0€€€€€€€€€
)
C2#
Placeholder_14:0€€€€€€€€€
*
C23#
Placeholder_35:0€€€€€€€€€
*
C14#
Placeholder_26:0€€€€€€€€€
*
C12#
Placeholder_24:0€€€€€€€€€
(
I2"
Placeholder_1:0€€€€€€€€€
)
C4#
Placeholder_16:0€€€€€€€€€
*
C22#
Placeholder_34:0€€€€€€€€€
*
I13#
Placeholder_12:0€€€€€€€€€
)
I10"
Placeholder_9:0€€€€€€€€€
(
I5"
Placeholder_4:0€€€€€€€€€
*
C21#
Placeholder_33:0€€€€€€€€€
*
C15#
Placeholder_27:0€€€€€€€€€
*
C20#
Placeholder_32:0€€€€€€€€€
*
C18#
Placeholder_30:0€€€€€€€€€X
probabilitiesG
0binary_logistic_head/predictions/probabilities:0€€€€€€€€€t
classesi
Ibinary_logistic_head/_classification_output_alternatives/classes_tensor:0€€€€€€€€€€€€€€€€€€tensorflow/serving/predict*•
default_input_alternative:NoneВ
(
I7"
Placeholder_6:0€€€€€€€€€
*
C13#
Placeholder_25:0€€€€€€€€€
(
I4"
Placeholder_3:0€€€€€€€€€
*
C19#
Placeholder_31:0€€€€€€€€€
)
C9#
Placeholder_21:0€€€€€€€€€
)
C5#
Placeholder_17:0€€€€€€€€€
(
I9"
Placeholder_8:0€€€€€€€€€
*
I11#
Placeholder_10:0€€€€€€€€€
(
I8"
Placeholder_7:0€€€€€€€€€
*
C17#
Placeholder_29:0€€€€€€€€€
)
C1#
Placeholder_13:0€€€€€€€€€
(
I6"
Placeholder_5:0€€€€€€€€€
&
I1 
Placeholder:0€€€€€€€€€
*
C10#
Placeholder_22:0€€€€€€€€€
(
I3"
Placeholder_2:0€€€€€€€€€
)
C7#
Placeholder_19:0€€€€€€€€€
*
C11#
Placeholder_23:0€€€€€€€€€
)
C3#
Placeholder_15:0€€€€€€€€€
*
C16#
Placeholder_28:0€€€€€€€€€
)
C6#
Placeholder_18:0€€€€€€€€€
*
C25#
Placeholder_37:0€€€€€€€€€
*
I12#
Placeholder_11:0€€€€€€€€€
)
C8#
Placeholder_20:0€€€€€€€€€
*
C24#
Placeholder_36:0€€€€€€€€€
*
C26#
Placeholder_38:0€€€€€€€€€
)
C2#
Placeholder_14:0€€€€€€€€€
*
C23#
Placeholder_35:0€€€€€€€€€
*
C14#
Placeholder_26:0€€€€€€€€€
*
C12#
Placeholder_24:0€€€€€€€€€
(
I2"
Placeholder_1:0€€€€€€€€€
)
C4#
Placeholder_16:0€€€€€€€€€
*
C22#
Placeholder_34:0€€€€€€€€€
*
I13#
Placeholder_12:0€€€€€€€€€
)
I10"
Placeholder_9:0€€€€€€€€€
(
I5"
Placeholder_4:0€€€€€€€€€
*
C21#
Placeholder_33:0€€€€€€€€€
*
C15#
Placeholder_27:0€€€€€€€€€
*
C20#
Placeholder_32:0€€€€€€€€€
*
C18#
Placeholder_30:0€€€€€€€€€X
probabilitiesG
0binary_logistic_head/predictions/probabilities:0€€€€€€€€€t
classesi
Ibinary_logistic_head/_classification_output_alternatives/classes_tensor:0€€€€€€€€€€€€€€€€€€tensorflow/serving/predict