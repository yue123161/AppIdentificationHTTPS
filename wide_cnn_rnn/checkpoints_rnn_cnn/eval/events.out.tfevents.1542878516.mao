       ЃK"	   M§жAbrain.Event:2FКсN     9Z3Л	?Ц)M§жA"њ

global_step/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R *
dtype0	

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
В
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
m
ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0*
_output_shapes
: 
v
flat_filenames/shapeConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
V
countConst"/device:CPU:0*
value	B	 R*
dtype0	*
_output_shapes
: 
\

batch_sizeConst"/device:CPU:0*
value
B	 R'*
dtype0	*
_output_shapes
: 
_
drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
*
_output_shapes
: 

OneShotIteratorOneShotIterator"/device:CPU:0*
shared_name *\
output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*
	container *
output_types
2				*
_output_shapes
: *0
dataset_factoryR
_make_dataset_soWvMtuA5sU
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 

IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*
output_types
2				*\
output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ

CastCastIteratorGetNext:2"/device:CPU:0*

SrcT0	*
Truncate( *(
_output_shapes
:џџџџџџџџџ*

DstT0
f
Reshape/shapeConst*%
valueB"џџџџ           *
dtype0*
_output_shapes
:
o
ReshapeReshapeCastReshape/shape*/
_output_shapes
:џџџџџџџџџ  *
T0*
Tshape0
Г
3layer_conv1/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv1/kernel*%
valueB"             *
dtype0*
_output_shapes
:

1layer_conv1/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *О*
dtype0*
_output_shapes
: 

1layer_conv1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *>*
dtype0*
_output_shapes
: 
џ
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
: *

seed *
T0*%
_class
loc:@layer_conv1/kernel
ц
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*
_output_shapes
: 

1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
ђ
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
Н
layer_conv1/kernel
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: 
ч
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*&
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(

layer_conv1/kernel/readIdentitylayer_conv1/kernel*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 

"layer_conv1/bias/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ё
layer_conv1/bias
VariableV2*
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
Ъ
layer_conv1/bias/AssignAssignlayer_conv1/bias"layer_conv1/bias/Initializer/zeros*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
}
layer_conv1/bias/readIdentitylayer_conv1/bias*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
j
layer_conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ц
layer_conv1/Conv2DConv2DReshapelayer_conv1/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ   

layer_conv1/BiasAddBiasAddlayer_conv1/Conv2Dlayer_conv1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ   
g
layer_conv1/ReluRelulayer_conv1/BiasAdd*/
_output_shapes
:џџџџџџџџџ   *
T0
П
max_pooling2d/MaxPoolMaxPoollayer_conv1/Relu*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides

Г
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
_class
loc:@layer_conv2/kernel*%
valueB"              

1layer_conv2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *ьбН*
dtype0*
_output_shapes
: 

1layer_conv2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *ьб=*
dtype0*
_output_shapes
: 
џ
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:  *

seed *
T0*%
_class
loc:@layer_conv2/kernel
ц
1layer_conv2/kernel/Initializer/random_uniform/subSub1layer_conv2/kernel/Initializer/random_uniform/max1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*
_output_shapes
: 

1layer_conv2/kernel/Initializer/random_uniform/mulMul;layer_conv2/kernel/Initializer/random_uniform/RandomUniform1layer_conv2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
ђ
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  *
T0
Н
layer_conv2/kernel
VariableV2*%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name 
ч
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  

layer_conv2/kernel/readIdentitylayer_conv2/kernel*&
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel

"layer_conv2/bias/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ё
layer_conv2/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: 
Ъ
layer_conv2/bias/AssignAssignlayer_conv2/bias"layer_conv2/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
}
layer_conv2/bias/readIdentitylayer_conv2/bias*
T0*#
_class
loc:@layer_conv2/bias*
_output_shapes
: 
j
layer_conv2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
є
layer_conv2/Conv2DConv2Dmax_pooling2d/MaxPoollayer_conv2/kernel/read*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

layer_conv2/BiasAddBiasAddlayer_conv2/Conv2Dlayer_conv2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ 
g
layer_conv2/ReluRelulayer_conv2/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
С
max_pooling2d_1/MaxPoolMaxPoollayer_conv2/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0
l
Flatten/flatten/ShapeShapemax_pooling2d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
m
#Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Щ
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
j
Flatten/flatten/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 

Flatten/flatten/ReshapeReshapemax_pooling2d_1/MaxPoolFlatten/flatten/Reshape/shape*
Tshape0*(
_output_shapes
:џџџџџџџџџ*
T0
Ї
1layer_fc1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

/layer_fc1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *AWН*
dtype0*
_output_shapes
: 

/layer_fc1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *AW=*
dtype0*
_output_shapes
: 
ѓ
9layer_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1layer_fc1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*#
_class
loc:@layer_fc1/kernel
о
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel*
_output_shapes
: 
ђ
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

ф
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*#
_class
loc:@layer_fc1/kernel
­
layer_fc1/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *#
_class
loc:@layer_fc1/kernel
й
layer_fc1/kernel/AssignAssignlayer_fc1/kernel+layer_fc1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:


layer_fc1/kernel/readIdentitylayer_fc1/kernel*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:


 layer_fc1/bias/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:

layer_fc1/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:
У
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(
x
layer_fc1/bias/readIdentitylayer_fc1/bias*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:
Ѓ
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
`
Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"џџџџ@   
v
	Reshape_1ReshapeIteratorGetNextReshape_1/shape*
T0	*
Tshape0*'
_output_shapes
:џџџџџџџџџ@
Ѕ
0word_embeddings/Initializer/random_uniform/shapeConst*"
_class
loc:@word_embeddings*
valueB"      *
dtype0*
_output_shapes
:

.word_embeddings/Initializer/random_uniform/minConst*"
_class
loc:@word_embeddings*
valueB
 *ЕО*
dtype0*
_output_shapes
: 

.word_embeddings/Initializer/random_uniform/maxConst*"
_class
loc:@word_embeddings*
valueB
 *Е>*
dtype0*
_output_shapes
: 
я
8word_embeddings/Initializer/random_uniform/RandomUniformRandomUniform0word_embeddings/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	 *

seed *
T0*"
_class
loc:@word_embeddings*
seed2 
к
.word_embeddings/Initializer/random_uniform/subSub.word_embeddings/Initializer/random_uniform/max.word_embeddings/Initializer/random_uniform/min*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
э
.word_embeddings/Initializer/random_uniform/mulMul8word_embeddings/Initializer/random_uniform/RandomUniform.word_embeddings/Initializer/random_uniform/sub*
_output_shapes
:	 *
T0*"
_class
loc:@word_embeddings
п
*word_embeddings/Initializer/random_uniformAdd.word_embeddings/Initializer/random_uniform/mul.word_embeddings/Initializer/random_uniform/min*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
Љ
word_embeddings
VariableV2*
shape:	 *
dtype0*
_output_shapes
:	 *
shared_name *"
_class
loc:@word_embeddings*
	container 
д
word_embeddings/AssignAssignword_embeddings*word_embeddings/Initializer/random_uniform*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0

word_embeddings/readIdentityword_embeddings*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
{
embedding_lookup/axisConst*
_output_shapes
: *"
_class
loc:@word_embeddings*
value	B : *
dtype0
б
embedding_lookupGatherV2word_embeddings/read	Reshape_1embedding_lookup/axis*"
_class
loc:@word_embeddings*+
_output_shapes
:џџџџџџџџџ@ *
Taxis0*
Tindices0	*
Tparams0
m
embedding_lookup/IdentityIdentityembedding_lookup*
T0*+
_output_shapes
:џџџџџџџџџ@ 
J
rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Q
rnn/range/startConst*
dtype0*
_output_shapes
: *
value	B :
Q
rnn/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
f
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*
_output_shapes
:*

Tidx0
d
rnn/concat/values_0Const*
_output_shapes
:*
valueB"       *
dtype0
Q
rnn/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 


rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N

rnn/transpose	Transposeembedding_lookup/Identity
rnn/concat*
T0*+
_output_shapes
:@џџџџџџџџџ *
Tperm0
V
	rnn/ShapeShapernn/transpose*
out_type0*
_output_shapes
:*
T0
a
rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
j
(rnn/BasicRNNCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
 
$rnn/BasicRNNCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice(rnn/BasicRNNCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
i
rnn/BasicRNNCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
g
%rnn/BasicRNNCellZeroState/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
д
 rnn/BasicRNNCellZeroState/concatConcatV2$rnn/BasicRNNCellZeroState/ExpandDimsrnn/BasicRNNCellZeroState/Const%rnn/BasicRNNCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
j
%rnn/BasicRNNCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
rnn/BasicRNNCellZeroState/zerosFill rnn/BasicRNNCellZeroState/concat%rnn/BasicRNNCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ@
l
*rnn/BasicRNNCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Є
&rnn/BasicRNNCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_slice*rnn/BasicRNNCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
k
!rnn/BasicRNNCellZeroState/Const_1Const*
_output_shapes
:*
valueB:@*
dtype0
X
rnn/Shape_1Shapernn/transpose*
_output_shapes
:*
T0*
out_type0
c
rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
X
rnn/Shape_2Shapernn/transpose*
T0*
out_type0*
_output_shapes
:
c
rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
T
rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
v
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
S
	rnn/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
S
rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

rnn/concat_1ConcatV2rnn/ExpandDims	rnn/Constrnn/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
T
rnn/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
t
	rnn/zerosFillrnn/concat_1rnn/zeros/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ@
J
rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 

rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:џџџџџџџџџ@*
clear_after_read(*
dynamic_size( *
identical_element_shapes(

rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*
identical_element_shapes(*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *$
element_shape:џџџџџџџџџ *
dynamic_size( *
clear_after_read(
i
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
T0*
out_type0*
_output_shapes
:
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ь
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
d
"rnn/TensorArrayUnstack/range/startConst*
_output_shapes
: *
value	B : *
dtype0
d
"rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ф
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:џџџџџџџџџ*

Tidx0
ю
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose*
_output_shapes
: 
O
rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
[
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
T0*
_output_shapes
: 
Y
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
T0*
_output_shapes
: 
]
rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
­
rnn/while/EnterEnterrnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context

rnn/while/Enter_1Enterrnn/time*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0*
is_constant( 
Ѕ
rnn/while/Enter_2Enterrnn/TensorArray:1*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0
Ф
rnn/while/Enter_3Enterrnn/BasicRNNCellZeroState/zeros*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ@*'

frame_namernn/while/while_context*
T0*
is_constant( 
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
_output_shapes
: : *
T0*
N
t
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
_output_shapes
: : *
T0*
N

rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0*
_output_shapes
: 
Њ
rnn/while/Less/EnterEnterrnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
d
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
Є
rnn/while/Less_1/EnterEnterrnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
\
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1*
_output_shapes
: 
L
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd*
_output_shapes
: 

rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
T0*"
_class
loc:@rnn/while/Merge*
_output_shapes
: : 

rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1*
_output_shapes
: : 

rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*$
_class
loc:@rnn/while/Merge_2*
_output_shapes
: : *
T0
Ў
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_3*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
T0*
_output_shapes
: 
h
rnn/while/Identity_3Identityrnn/while/Switch_3:1*
T0*'
_output_shapes
:џџџџџџџџџ@
f
rnn/while/add/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
_output_shapes
: *
T0
Ф
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:џџџџџџџџџ 
Й
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context
ф
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
Й
:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   *
dtype0*
_output_shapes
:
Ћ
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *јKFО*
dtype0*
_output_shapes
: 
Ћ
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *јKF>*
dtype0*
_output_shapes
: 

Brnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniform:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:`@*

seed *
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
seed2 

8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/subSub8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/max8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes
: 

8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mulMulBrnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniform8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/sub*
_output_shapes

:`@*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel

4rnn/basic_rnn_cell/kernel/Initializer/random_uniformAdd8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mul8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
_output_shapes

:`@*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel
Л
rnn/basic_rnn_cell/kernel
VariableV2*
shape
:`@*
dtype0*
_output_shapes

:`@*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
	container 
ћ
 rnn/basic_rnn_cell/kernel/AssignAssignrnn/basic_rnn_cell/kernel4rnn/basic_rnn_cell/kernel/Initializer/random_uniform*
_output_shapes

:`@*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(
n
rnn/basic_rnn_cell/kernel/readIdentityrnn/basic_rnn_cell/kernel*
T0*
_output_shapes

:`@
Ђ
)rnn/basic_rnn_cell/bias/Initializer/zerosConst**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Џ
rnn/basic_rnn_cell/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias
ц
rnn/basic_rnn_cell/bias/AssignAssignrnn/basic_rnn_cell/bias)rnn/basic_rnn_cell/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias
f
rnn/basic_rnn_cell/bias/readIdentityrnn/basic_rnn_cell/bias*
_output_shapes
:@*
T0
{
$rnn/while/basic_rnn_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ы
rnn/while/basic_rnn_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3$rnn/while/basic_rnn_cell/concat/axis*
N*'
_output_shapes
:џџџџџџџџџ`*

Tidx0*
T0
Щ
rnn/while/basic_rnn_cell/MatMulMatMulrnn/while/basic_rnn_cell/concat%rnn/while/basic_rnn_cell/MatMul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( *
transpose_b( 
Ю
%rnn/while/basic_rnn_cell/MatMul/EnterEnterrnn/basic_rnn_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:`@*'

frame_namernn/while/while_context
Н
 rnn/while/basic_rnn_cell/BiasAddBiasAddrnn/while/basic_rnn_cell/MatMul&rnn/while/basic_rnn_cell/BiasAdd/Enter*'
_output_shapes
:џџџџџџџџџ@*
T0*
data_formatNHWC
Щ
&rnn/while/basic_rnn_cell/BiasAdd/EnterEnterrnn/basic_rnn_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:@*'

frame_namernn/while/while_context
y
rnn/while/basic_rnn_cell/TanhTanh rnn/while/basic_rnn_cell/BiasAdd*'
_output_shapes
:џџџџџџџџџ@*
T0

-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity_1rnn/while/basic_rnn_cell/Tanhrnn/while/Identity_2*
_output_shapes
: *
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh
ћ
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
parallel_iterations *
is_constant(*
_output_shapes
:*'

frame_namernn/while/while_context*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh
h
rnn/while/add_1/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
`
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
_output_shapes
: *
T0
X
rnn/while/NextIterationNextIterationrnn/while/add*
_output_shapes
: *
T0
\
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
T0*
_output_shapes
: 
z
rnn/while/NextIteration_2NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
{
rnn/while/NextIteration_3NextIterationrnn/while/basic_rnn_cell/Tanh*
T0*'
_output_shapes
:џџџџџџџџџ@
I
rnn/while/ExitExitrnn/while/Switch*
T0*
_output_shapes
: 
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
T0*
_output_shapes
: 
M
rnn/while/Exit_2Exitrnn/while/Switch_2*
T0*
_output_shapes
: 
^
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0*'
_output_shapes
:џџџџџџџџџ@

&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
_output_shapes
: 

 rnn/TensorArrayStack/range/startConst*
_output_shapes
: *"
_class
loc:@rnn/TensorArray*
value	B : *
dtype0

 rnn/TensorArrayStack/range/deltaConst*
_output_shapes
: *"
_class
loc:@rnn/TensorArray*
value	B :*
dtype0
ф
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*#
_output_shapes
:џџџџџџџџџ*

Tidx0*"
_class
loc:@rnn/TensorArray

(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_2*
dtype0*+
_output_shapes
:@џџџџџџџџџ@*$
element_shape:џџџџџџџџџ@*"
_class
loc:@rnn/TensorArray
U
rnn/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
L

rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :
n
rnn/range_1Rangernn/range_1/start
rnn/Rank_1rnn/range_1/delta*
_output_shapes
:*

Tidx0
f
rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
S
rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

rnn/concat_2ConcatV2rnn/concat_2/values_0rnn/range_1rnn/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0

rnn/transpose_1	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_2*+
_output_shapes
:џџџџџџџџџ@@*
Tperm0*
T0
h
strided_slice/stackConst*!
valueB"    џџџџ    *
dtype0*
_output_shapes
:
j
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*!
valueB"            
j
strided_slice/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

strided_sliceStridedSlicernn/transpose_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:џџџџџџџџџ@*
Index0*
T0*
shrink_axis_mask
Б
6layer_rnn_fc_1/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Ѓ
4layer_rnn_fc_1/kernel/Initializer/random_uniform/minConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *ѓ5О*
dtype0*
_output_shapes
: 
Ѓ
4layer_rnn_fc_1/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *ѓ5>*
dtype0*
_output_shapes
: 

>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6layer_rnn_fc_1/kernel/Initializer/random_uniform/shape*

seed *
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
seed2 *
dtype0*
_output_shapes
:	@
ђ
4layer_rnn_fc_1/kernel/Initializer/random_uniform/subSub4layer_rnn_fc_1/kernel/Initializer/random_uniform/max4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
: 

4layer_rnn_fc_1/kernel/Initializer/random_uniform/mulMul>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniform4layer_rnn_fc_1/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@
ї
0layer_rnn_fc_1/kernel/Initializer/random_uniformAdd4layer_rnn_fc_1/kernel/Initializer/random_uniform/mul4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
_output_shapes
:	@*
T0*(
_class
loc:@layer_rnn_fc_1/kernel
Е
layer_rnn_fc_1/kernel
VariableV2*
dtype0*
_output_shapes
:	@*
shared_name *(
_class
loc:@layer_rnn_fc_1/kernel*
	container *
shape:	@
ь
layer_rnn_fc_1/kernel/AssignAssignlayer_rnn_fc_1/kernel0layer_rnn_fc_1/kernel/Initializer/random_uniform*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0

layer_rnn_fc_1/kernel/readIdentitylayer_rnn_fc_1/kernel*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@

%layer_rnn_fc_1/bias/Initializer/zerosConst*&
_class
loc:@layer_rnn_fc_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Љ
layer_rnn_fc_1/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:
з
layer_rnn_fc_1/bias/AssignAssignlayer_rnn_fc_1/bias%layer_rnn_fc_1/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:

layer_rnn_fc_1/bias/readIdentitylayer_rnn_fc_1/bias*
_output_shapes	
:*
T0*&
_class
loc:@layer_rnn_fc_1/bias
Ѓ
layer_rnn_fc_1/MatMulMatMulstrided_slicelayer_rnn_fc_1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

layer_rnn_fc_1/BiasAddBiasAddlayer_rnn_fc_1/MatMullayer_rnn_fc_1/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
f
layer_rnn_fc_1/ReluRelulayer_rnn_fc_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 

concatConcatV2layer_fc1/Relulayer_rnn_fc_1/Reluconcat/axis*
T0*
N*(
_output_shapes
:џџџџџџџџџ*

Tidx0
Й
:layer_combine_fc_x/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ћ
8layer_combine_fc_x/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *   О*
dtype0*
_output_shapes
: 
Ћ
8layer_combine_fc_x/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *   >*
dtype0*
_output_shapes
: 

Blayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_x/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 

8layer_combine_fc_x/kernel/Initializer/random_uniform/subSub8layer_combine_fc_x/kernel/Initializer/random_uniform/max8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel

8layer_combine_fc_x/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_x/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:


4layer_combine_fc_x/kernel/Initializer/random_uniformAdd8layer_combine_fc_x/kernel/Initializer/random_uniform/mul8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:

П
layer_combine_fc_x/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:

§
 layer_combine_fc_x/kernel/AssignAssignlayer_combine_fc_x/kernel4layer_combine_fc_x/kernel/Initializer/random_uniform* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(

layer_combine_fc_x/kernel/readIdentitylayer_combine_fc_x/kernel* 
_output_shapes
:
*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
Є
)layer_combine_fc_x/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:**
_class 
loc:@layer_combine_fc_x/bias*
valueB*    
Б
layer_combine_fc_x/bias
VariableV2*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ч
layer_combine_fc_x/bias/AssignAssignlayer_combine_fc_x/bias)layer_combine_fc_x/bias/Initializer/zeros**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

layer_combine_fc_x/bias/readIdentitylayer_combine_fc_x/bias*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:
Є
layer_combine_fc_x/MatMulMatMulconcatlayer_combine_fc_x/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0
Ј
layer_combine_fc_x/BiasAddBiasAddlayer_combine_fc_x/MatMullayer_combine_fc_x/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
n
layer_combine_fc_x/ReluRelulayer_combine_fc_x/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Й
:layer_combine_fc_y/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"      
Ћ
8layer_combine_fc_y/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}RО*
dtype0*
_output_shapes
: 
Ћ
8layer_combine_fc_y/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R>*
dtype0*
_output_shapes
: 

Blayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_y/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
seed2 

8layer_combine_fc_y/kernel/Initializer/random_uniform/subSub8layer_combine_fc_y/kernel/Initializer/random_uniform/max8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel

8layer_combine_fc_y/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_y/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	

4layer_combine_fc_y/kernel/Initializer/random_uniformAdd8layer_combine_fc_y/kernel/Initializer/random_uniform/mul8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
Н
layer_combine_fc_y/kernel
VariableV2*
	container *
shape:	*
dtype0*
_output_shapes
:	*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel
ќ
 layer_combine_fc_y/kernel/AssignAssignlayer_combine_fc_y/kernel4layer_combine_fc_y/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	

layer_combine_fc_y/kernel/readIdentitylayer_combine_fc_y/kernel*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	
Ђ
)layer_combine_fc_y/bias/Initializer/zerosConst*
_output_shapes
:**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0
Џ
layer_combine_fc_y/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:
ц
layer_combine_fc_y/bias/AssignAssignlayer_combine_fc_y/bias)layer_combine_fc_y/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:

layer_combine_fc_y/bias/readIdentitylayer_combine_fc_y/bias*
_output_shapes
:*
T0**
_class 
loc:@layer_combine_fc_y/bias
Д
layer_combine_fc_y/MatMulMatMullayer_combine_fc_x/Relulayer_combine_fc_y/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0
Ї
layer_combine_fc_y/BiasAddBiasAddlayer_combine_fc_y/MatMullayer_combine_fc_y/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
`
SoftmaxSoftmaxlayer_combine_fc_y/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:3*
_output_shapes
:*
T0	*
out_type0
э
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_combine_fc_y/BiasAddIteratorGetNext:3*
T0*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ*
Tlabels0	
Q
Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
S
gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
Ї
gradients/f_count_1Entergradients/f_count*
_output_shapes
: *'

frame_namernn/while/while_context*
T0*
is_constant( *
parallel_iterations 
r
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
T0*
N*
_output_shapes
: : 
b
gradients/SwitchSwitchgradients/Mergernn/while/LoopCond*
_output_shapes
: : *
T0
f
gradients/Add/yConst^rnn/while/Identity*
_output_shapes
: *
value	B :*
dtype0
Z
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0*
_output_shapes
: 
Щ
gradients/NextIterationNextIterationgradients/Add[^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2D^gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPushV2B^gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPushV2B^gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2D^gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2_1*
T0*
_output_shapes
: 
N
gradients/f_count_2Exitgradients/Switch*
T0*
_output_shapes
: 
S
gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
Г
gradients/b_count_1Entergradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context
v
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
N*
_output_shapes
: : *
T0
x
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
К
gradients/GreaterEqual/EnterEntergradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context
O
gradients/b_count_2LoopCondgradients/GreaterEqual*
_output_shapes
: 
g
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0*
_output_shapes
: : 
i
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
В
gradients/NextIteration_1NextIterationgradients/SubV^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
P
gradients/b_count_3Exitgradients/Switch_1*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
 
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0
Ђ
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
^
gradients/Mean_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
e
gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:џџџџџџџџџ
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:џџџџџџџџџ*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
А
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Б
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
о
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ
м
5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
з
:gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul6^gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad

Bgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:џџџџџџџџџ
Г
Dgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
і
/gradients/layer_combine_fc_y/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_y/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
ш
1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1MatMullayer_combine_fc_x/ReluBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a(
Ї
9gradients/layer_combine_fc_y/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_y/MatMul_grad/MatMul2^gradients/layer_combine_fc_y/MatMul_grad/MatMul_1
Б
Agradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_y/MatMul_grad/MatMul:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Ў
Cgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul_1*
_output_shapes
:	
Ъ
/gradients/layer_combine_fc_x/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencylayer_combine_fc_x/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
В
5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/layer_combine_fc_x/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
Ќ
:gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_depsNoOp6^gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad0^gradients/layer_combine_fc_x/Relu_grad/ReluGrad
Г
Bgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/Relu_grad/ReluGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@gradients/layer_combine_fc_x/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ*
T0
Д
Dgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
і
/gradients/layer_combine_fc_x/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_x/kernel/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
и
1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1MatMulconcatBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
Ї
9gradients/layer_combine_fc_x/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_x/MatMul_grad/MatMul2^gradients/layer_combine_fc_x/MatMul_grad/MatMul_1
Б
Agradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/MatMul_grad/MatMul:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul
Џ
Cgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul_1* 
_output_shapes
:

\
gradients/concat_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
o
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
T0*
_output_shapes
: 
i
gradients/concat_grad/ShapeShapelayer_fc1/Relu*
T0*
out_type0*
_output_shapes
:

gradients/concat_grad/ShapeNShapeNlayer_fc1/Relulayer_rnn_fc_1/Relu*
T0*
out_type0*
N* 
_output_shapes
::
Ж
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1*
N* 
_output_shapes
::
щ
gradients/concat_grad/SliceSliceAgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ
я
gradients/concat_grad/Slice_1SliceAgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*(
_output_shapes
:џџџџџџџџџ*
Index0*
T0
l
&gradients/concat_grad/tuple/group_depsNoOp^gradients/concat_grad/Slice^gradients/concat_grad/Slice_1
у
.gradients/concat_grad/tuple/control_dependencyIdentitygradients/concat_grad/Slice'^gradients/concat_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/concat_grad/Slice*(
_output_shapes
:џџџџџџџџџ
щ
0gradients/concat_grad/tuple/control_dependency_1Identitygradients/concat_grad/Slice_1'^gradients/concat_grad/tuple/group_deps*0
_class&
$"loc:@gradients/concat_grad/Slice_1*(
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
&gradients/layer_fc1/Relu_grad/ReluGradReluGrad.gradients/concat_grad/tuple/control_dependencylayer_fc1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Б
+gradients/layer_rnn_fc_1/Relu_grad/ReluGradReluGrad0gradients/concat_grad/tuple/control_dependency_1layer_rnn_fc_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
 
,gradients/layer_fc1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/layer_fc1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

1gradients/layer_fc1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/layer_fc1/BiasAdd_grad/BiasAddGrad'^gradients/layer_fc1/Relu_grad/ReluGrad

9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ

;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad
Њ
1gradients/layer_rnn_fc_1/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/layer_rnn_fc_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0
 
6gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/group_depsNoOp2^gradients/layer_rnn_fc_1/BiasAdd_grad/BiasAddGrad,^gradients/layer_rnn_fc_1/Relu_grad/ReluGrad
Ѓ
>gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/layer_rnn_fc_1/Relu_grad/ReluGrad7^gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/layer_rnn_fc_1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ
Є
@gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/layer_rnn_fc_1/BiasAdd_grad/BiasAddGrad7^gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_rnn_fc_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
л
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
з
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 

0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1

8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0

:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1
щ
+gradients/layer_rnn_fc_1/MatMul_grad/MatMulMatMul>gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependencylayer_rnn_fc_1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( *
transpose_b(
ж
-gradients/layer_rnn_fc_1/MatMul_grad/MatMul_1MatMulstrided_slice>gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	@*
transpose_a(*
transpose_b( *
T0

5gradients/layer_rnn_fc_1/MatMul_grad/tuple/group_depsNoOp,^gradients/layer_rnn_fc_1/MatMul_grad/MatMul.^gradients/layer_rnn_fc_1/MatMul_grad/MatMul_1
 
=gradients/layer_rnn_fc_1/MatMul_grad/tuple/control_dependencyIdentity+gradients/layer_rnn_fc_1/MatMul_grad/MatMul6^gradients/layer_rnn_fc_1/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/layer_rnn_fc_1/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ@

?gradients/layer_rnn_fc_1/MatMul_grad/tuple/control_dependency_1Identity-gradients/layer_rnn_fc_1/MatMul_grad/MatMul_16^gradients/layer_rnn_fc_1/MatMul_grad/tuple/group_deps*
_output_shapes
:	@*
T0*@
_class6
42loc:@gradients/layer_rnn_fc_1/MatMul_grad/MatMul_1

,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling2d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
щ
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ 
q
"gradients/strided_slice_grad/ShapeShapernn/transpose_1*
T0*
out_type0*
_output_shapes
:

-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad"gradients/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2=gradients/layer_rnn_fc_1/MatMul_grad/tuple/control_dependency*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*+
_output_shapes
:џџџџџџџџџ@@*
Index0*
T0
Љ
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv2/Relumax_pooling2d_1/MaxPool.gradients/Flatten/flatten/Reshape_grad/Reshape*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides

x
0gradients/rnn/transpose_1_grad/InvertPermutationInvertPermutationrnn/concat_2*
T0*
_output_shapes
:
й
(gradients/rnn/transpose_1_grad/transpose	Transpose-gradients/strided_slice_grad/StridedSliceGrad0gradients/rnn/transpose_1_grad/InvertPermutation*+
_output_shapes
:@џџџџџџџџџ@*
Tperm0*
T0
Д
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradlayer_conv2/Relu*
T0*/
_output_shapes
:џџџџџџџџџ 
ъ
Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3rnn/TensorArrayrnn/while/Exit_2*
_output_shapes

:: *"
_class
loc:@rnn/TensorArray*
source	gradients

Ugradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentityrnn/while/Exit_2Z^gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*"
_class
loc:@rnn/TensorArray

_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3rnn/TensorArrayStack/range(gradients/rnn/transpose_1_grad/transposeUgradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
_output_shapes
: *
T0
g
gradients/zeros_like_1	ZerosLikernn/while/Exit_3*'
_output_shapes
:џџџџџџџџџ@*
T0
Ѓ
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad

;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ 

=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 

&gradients/rnn/while/Exit_2_grad/b_exitEnter_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context
к
&gradients/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:џџџџџџџџџ@*1

frame_name#!gradients/rnn/while/while_context
І
(gradients/layer_conv2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoollayer_conv2/kernel/read* 
_output_shapes
::*
T0*
out_type0*
N
є
5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv2/Conv2D_grad/ShapeNlayer_conv2/kernel/read;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
э
6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool*gradients/layer_conv2/Conv2D_grad/ShapeN:1;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:  *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ћ
2gradients/layer_conv2/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput
Ж
:gradients/layer_conv2/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*/
_output_shapes
:џџџџџџџџџ *
T0*H
_class>
<:loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput
Б
<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*I
_class?
=;loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:  *
T0
К
*gradients/rnn/while/Switch_2_grad/b_switchMerge&gradients/rnn/while/Exit_2_grad/b_exit1gradients/rnn/while/Switch_2_grad_1/NextIteration*
N*
_output_shapes
: : *
T0
Ы
*gradients/rnn/while/Switch_3_grad/b_switchMerge&gradients/rnn/while/Exit_3_grad/b_exit1gradients/rnn/while/Switch_3_grad_1/NextIteration*)
_output_shapes
:џџџџџџџџџ@: *
T0*
N
Б
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv1/Relumax_pooling2d/MaxPool:gradients/layer_conv2/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ   
д
'gradients/rnn/while/Merge_2_grad/SwitchSwitch*gradients/rnn/while/Switch_2_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
c
1gradients/rnn/while/Merge_2_grad/tuple/group_depsNoOp(^gradients/rnn/while/Merge_2_grad/Switch

9gradients/rnn/while/Merge_2_grad/tuple/control_dependencyIdentity'gradients/rnn/while/Merge_2_grad/Switch2^gradients/rnn/while/Merge_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 

;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1Identity)gradients/rnn/while/Merge_2_grad/Switch:12^gradients/rnn/while/Merge_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
і
'gradients/rnn/while/Merge_3_grad/SwitchSwitch*gradients/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
c
1gradients/rnn/while/Merge_3_grad/tuple/group_depsNoOp(^gradients/rnn/while/Merge_3_grad/Switch

9gradients/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity'gradients/rnn/while/Merge_3_grad/Switch2^gradients/rnn/while/Merge_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*'
_output_shapes
:џџџџџџџџџ@

;gradients/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity)gradients/rnn/while/Merge_3_grad/Switch:12^gradients/rnn/while/Merge_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*'
_output_shapes
:џџџџџџџџџ@
В
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradlayer_conv1/Relu*/
_output_shapes
:џџџџџџџџџ   *
T0

%gradients/rnn/while/Enter_2_grad/ExitExit9gradients/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 

%gradients/rnn/while/Enter_3_grad/ExitExit9gradients/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ@
Ѓ
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad

;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ   

=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
§
^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1*
_output_shapes

:: *0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
source	gradients
Ж
dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterrnn/TensorArray*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
parallel_iterations *
is_constant(*
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context
з
Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1_^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
_output_shapes
: 
А
Ngradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*'
_output_shapes
:џџџџџџџџџ@
Ш
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*'
_class
loc:@rnn/while/Identity_1*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*'
_class
loc:@rnn/while/Identity_1*

stack_name *
_output_shapes
:*
	elem_type0
Џ
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context*
T0*
is_constant(

Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterrnn/while/Identity_1^gradients/Add*
_output_shapes
: *
swap_memory( *
T0

Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub*
_output_shapes
: *
	elem_type0
Ф
_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
г
Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2C^gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2A^gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2A^gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2C^gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1
ф
Mgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOp<^gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1O^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3

Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityNgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3N^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*a
_classW
USloc:@gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*'
_output_shapes
:џџџџџџџџџ@
а
Wgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1Identity;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1N^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch

(gradients/layer_conv1/Conv2D_grad/ShapeNShapeNReshapelayer_conv1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
є
5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv1/Conv2D_grad/ShapeNlayer_conv1/kernel/read;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:џџџџџџџџџ  *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
п
6gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshape*gradients/layer_conv1/Conv2D_grad/ShapeN:1;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ћ
2gradients/layer_conv1/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput
Ж
:gradients/layer_conv1/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*/
_output_shapes
:џџџџџџџџџ  *
T0*H
_class>
<:loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput
Б
<gradients/layer_conv1/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*I
_class?
=;loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter
Є
gradients/AddNAddN;gradients/rnn/while/Merge_3_grad/tuple/control_dependency_1Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ@*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*
N
Х
5gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGradTanhGrad@gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2gradients/AddN*
T0*'
_output_shapes
:џџџџџџџџџ@
И
;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/ConstConst*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
є
;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/f_accStackV2;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/Const*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
§
;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/EnterEnter;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context

Agradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPushV2StackPushV2;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/Enterrnn/while/basic_rnn_cell/Tanh^gradients/Add*'
_output_shapes
:џџџџџџџџџ@*
swap_memory( *
T0
р
@gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2
StackPopV2Fgradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ@*
	elem_type0

Fgradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2/EnterEnter;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context
Н
;gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad5gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
:@
О
@gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp<^gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/BiasAddGrad6^gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad
Ъ
Hgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity5gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGradA^gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad*'
_output_shapes
:џџџџџџџџџ@
Ы
Jgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Identity;gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/BiasAddGradA^gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
М
1gradients/rnn/while/Switch_2_grad_1/NextIterationNextIterationWgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 

5gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMulMatMulHgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency;gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ`*
transpose_a( *
transpose_b(
ю
;gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul/EnterEnterrnn/basic_rnn_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:`@*1

frame_name#!gradients/rnn/while/while_context

7gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1MatMulBgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2Hgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:`@*
transpose_a(*
transpose_b( 
М
=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/ConstConst*2
_class(
&$loc:@rnn/while/basic_rnn_cell/concat*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
њ
=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/f_accStackV2=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/Const*
	elem_type0*2
_class(
&$loc:@rnn/while/basic_rnn_cell/concat*

stack_name *
_output_shapes
:

=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/EnterEnter=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context

Cgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/Enterrnn/while/basic_rnn_cell/concat^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ`*
swap_memory( 
ф
Bgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2Hgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ`*
	elem_type0

Hgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context
Й
?gradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOp6^gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul8^gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1
Ш
Ggradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity5gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul@^gradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ`
Х
Igradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Identity7gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1@^gradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:`@*
T0*J
_class@
><loc:@gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1

;gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_accConst*
valueB@*    *
dtype0*
_output_shapes
:@

=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_1Enter;gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc*
is_constant( *
parallel_iterations *
_output_shapes
:@*1

frame_name#!gradients/rnn/while/while_context*
T0
њ
=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_2Merge=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_1Cgradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/NextIteration*
_output_shapes

:@: *
T0*
N
Х
<gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/SwitchSwitch=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0* 
_output_shapes
:@:@
ё
9gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/AddAdd>gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/Switch:1Jgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
:@
Д
Cgradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/NextIterationNextIteration9gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes
:@
Ј
=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_3Exit<gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes
:@

4gradients/rnn/while/basic_rnn_cell/concat_grad/ConstConst^gradients/Sub*
_output_shapes
: *
value	B :*
dtype0

3gradients/rnn/while/basic_rnn_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Ъ
2gradients/rnn/while/basic_rnn_cell/concat_grad/modFloorMod4gradients/rnn/while/basic_rnn_cell/concat_grad/Const3gradients/rnn/while/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0

4gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeShapernn/while/TensorArrayReadV3*
_output_shapes
:*
T0*
out_type0

5gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeNShapeN@gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2Bgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N* 
_output_shapes
::
Ж
;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/ConstConst*.
_class$
" loc:@rnn/while/TensorArrayReadV3*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ђ
;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_accStackV2;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Const*.
_class$
" loc:@rnn/while/TensorArrayReadV3*

stack_name *
_output_shapes
:*
	elem_type0
§
;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/EnterEnter;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context*
T0
џ
Agradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2StackPushV2;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enterrnn/while/TensorArrayReadV3^gradients/Add*'
_output_shapes
:џџџџџџџџџ *
swap_memory( *
T0
р
@gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2
StackPopV2Fgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ *
	elem_type0

Fgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2/EnterEnter;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc*
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
Б
=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Const_1Const*'
_class
loc:@rnn/while/Identity_3*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
я
=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc_1StackV2=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Const_1*'
_class
loc:@rnn/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0

=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enter_1Enter=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context
ќ
Cgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enter_1rnn/while/Identity_3^gradients/Add*'
_output_shapes
:џџџџџџџџџ@*
swap_memory( *
T0
ф
Bgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2Hgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ@*
	elem_type0

Hgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1/EnterEnter=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context

;gradients/rnn/while/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset2gradients/rnn/while/basic_rnn_cell/concat_grad/mod5gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN7gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
Й
4gradients/rnn/while/basic_rnn_cell/concat_grad/SliceSliceGgradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependency;gradients/rnn/while/basic_rnn_cell/concat_grad/ConcatOffset5gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ 
П
6gradients/rnn/while/basic_rnn_cell/concat_grad/Slice_1SliceGgradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependency=gradients/rnn/while/basic_rnn_cell/concat_grad/ConcatOffset:17gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN:1*'
_output_shapes
:џџџџџџџџџ@*
Index0*
T0
З
?gradients/rnn/while/basic_rnn_cell/concat_grad/tuple/group_depsNoOp5^gradients/rnn/while/basic_rnn_cell/concat_grad/Slice7^gradients/rnn/while/basic_rnn_cell/concat_grad/Slice_1
Ц
Ggradients/rnn/while/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity4gradients/rnn/while/basic_rnn_cell/concat_grad/Slice@^gradients/rnn/while/basic_rnn_cell/concat_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/rnn/while/basic_rnn_cell/concat_grad/Slice*'
_output_shapes
:џџџџџџџџџ 
Ь
Igradients/rnn/while/basic_rnn_cell/concat_grad/tuple/control_dependency_1Identity6gradients/rnn/while/basic_rnn_cell/concat_grad/Slice_1@^gradients/rnn/while/basic_rnn_cell/concat_grad/tuple/group_deps*I
_class?
=;loc:@gradients/rnn/while/basic_rnn_cell/concat_grad/Slice_1*'
_output_shapes
:џџџџџџџџџ@*
T0

:gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_accConst*
valueB`@*    *
dtype0*
_output_shapes

:`@

<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_1Enter:gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc*
parallel_iterations *
_output_shapes

:`@*1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant( 
ћ
<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_2Merge<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_1Bgradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
:`@: 
Ы
;gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/SwitchSwitch<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:`@:`@
ђ
8gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/AddAdd=gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/Switch:1Igradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:`@
Ж
Bgradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/NextIterationNextIteration8gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/Add*
T0*
_output_shapes

:`@
Њ
<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_3Exit;gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/Switch*
_output_shapes

:`@*
T0

Lgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Rgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterTgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
source	gradients*
_output_shapes

:: 
Њ
Rgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterrnn/TensorArray_1*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context*
T0
е
Tgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context*
T0*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
а
Hgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityTgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1M^gradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter
С
Ngradients/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Lgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Ggradients/rnn/while/basic_rnn_cell/concat_grad/tuple/control_dependencyHgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
}
8gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
_output_shapes
: *
valueB
 *    *
dtype0
џ
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter8gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context
э
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
N*
_output_shapes
: : *
T0
З
9gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0*
_output_shapes
: : 
ы
6gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAdd;gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Ngradients/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Њ
@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration6gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 

:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit9gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
П
1gradients/rnn/while/Switch_3_grad_1/NextIterationNextIterationIgradients/rnn/while/basic_rnn_cell/concat_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ@*
T0
Ў
ogradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3rnn/TensorArray_1:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes

:: *$
_class
loc:@rnn/TensorArray_1*
source	gradients
ь
kgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3p^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*$
_class
loc:@rnn/TensorArray_1*
_output_shapes
: 
Ю
agradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3ogradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3rnn/TensorArrayUnstack/rangekgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*
dtype0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 

^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpb^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3;^gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
т
fgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityagradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3_^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*t
_classj
hfloc:@gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*+
_output_shapes
:@џџџџџџџџџ 

hgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3_^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
t
.gradients/rnn/transpose_grad/InvertPermutationInvertPermutation
rnn/concat*
_output_shapes
:*
T0

&gradients/rnn/transpose_grad/transpose	Transposefgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency.gradients/rnn/transpose_grad/InvertPermutation*+
_output_shapes
:џџџџџџџџџ@ *
Tperm0*
T0
Ђ
%gradients/embedding_lookup_grad/ShapeConst*"
_class
loc:@word_embeddings*%
valueB	"              *
dtype0	*
_output_shapes
:
О
'gradients/embedding_lookup_grad/ToInt32Cast%gradients/embedding_lookup_grad/Shape*

SrcT0	*"
_class
loc:@word_embeddings*
Truncate( *
_output_shapes
:*

DstT0
h
$gradients/embedding_lookup_grad/SizeSize	Reshape_1*
T0	*
out_type0*
_output_shapes
: 
p
.gradients/embedding_lookup_grad/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
П
*gradients/embedding_lookup_grad/ExpandDims
ExpandDims$gradients/embedding_lookup_grad/Size.gradients/embedding_lookup_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
}
3gradients/embedding_lookup_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

5gradients/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

5gradients/embedding_lookup_grad/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

-gradients/embedding_lookup_grad/strided_sliceStridedSlice'gradients/embedding_lookup_grad/ToInt323gradients/embedding_lookup_grad/strided_slice/stack5gradients/embedding_lookup_grad/strided_slice/stack_15gradients/embedding_lookup_grad/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
m
+gradients/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
є
&gradients/embedding_lookup_grad/concatConcatV2*gradients/embedding_lookup_grad/ExpandDims-gradients/embedding_lookup_grad/strided_slice+gradients/embedding_lookup_grad/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Т
'gradients/embedding_lookup_grad/ReshapeReshape&gradients/rnn/transpose_grad/transpose&gradients/embedding_lookup_grad/concat*'
_output_shapes
:џџџџџџџџџ *
T0*
Tshape0
Ї
)gradients/embedding_lookup_grad/Reshape_1Reshape	Reshape_1*gradients/embedding_lookup_grad/ExpandDims*#
_output_shapes
:џџџџџџџџџ*
T0	*
Tshape0

beta1_power/initial_valueConst*
_output_shapes
: **
_class 
loc:@layer_combine_fc_x/bias*
valueB
 *fff?*
dtype0

beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape: 
К
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes
: *
use_locking(
v
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0**
_class 
loc:@layer_combine_fc_x/bias

beta2_power/initial_valueConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB
 *wО?*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape: 
К
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes
: 
v
beta2_power/readIdentitybeta2_power*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes
: 
Е
)layer_conv1/kernel/Adam/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
Т
layer_conv1/kernel/Adam
VariableV2*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0
э
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
З
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
Ф
layer_conv1/kernel/Adam_1
VariableV2*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0
ѓ
 layer_conv1/kernel/Adam_1/AssignAssignlayer_conv1/kernel/Adam_1+layer_conv1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/Adam_1/readIdentitylayer_conv1/kernel/Adam_1*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 

'layer_conv1/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
І
layer_conv1/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
й
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 

layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias

)layer_conv1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ј
layer_conv1/bias/Adam_1
VariableV2*#
_class
loc:@layer_conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
п
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(

layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
_output_shapes
: *
T0
Й
9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

/layer_conv2/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

)layer_conv2/kernel/Adam/Initializer/zerosFill9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensor/layer_conv2/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*&
_output_shapes
:  
Т
layer_conv2/kernel/Adam
VariableV2*&
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0
э
layer_conv2/kernel/Adam/AssignAssignlayer_conv2/kernel/Adam)layer_conv2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  

layer_conv2/kernel/Adam/readIdentitylayer_conv2/kernel/Adam*&
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel
Л
;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

1layer_conv2/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+layer_conv2/kernel/Adam_1/Initializer/zerosFill;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1layer_conv2/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*&
_output_shapes
:  
Ф
layer_conv2/kernel/Adam_1
VariableV2*
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  
ѓ
 layer_conv2/kernel/Adam_1/AssignAssignlayer_conv2/kernel/Adam_1+layer_conv2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  

layer_conv2/kernel/Adam_1/readIdentitylayer_conv2/kernel/Adam_1*&
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel

'layer_conv2/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
І
layer_conv2/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: 
й
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 

layer_conv2/bias/Adam/readIdentitylayer_conv2/bias/Adam*
T0*#
_class
loc:@layer_conv2/bias*
_output_shapes
: 

)layer_conv2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0
Ј
layer_conv2/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: 
п
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 

layer_conv2/bias/Adam_1/readIdentitylayer_conv2/bias/Adam_1*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
­
7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

-layer_fc1/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
љ
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:
*
T0
В
layer_fc1/kernel/Adam
VariableV2*#
_class
loc:@layer_fc1/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
п
layer_fc1/kernel/Adam/AssignAssignlayer_fc1/kernel/Adam'layer_fc1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:


layer_fc1/kernel/Adam/readIdentitylayer_fc1/kernel/Adam*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

Џ
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0

/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:

Д
layer_fc1/kernel/Adam_1
VariableV2*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

х
layer_fc1/kernel/Adam_1/AssignAssignlayer_fc1/kernel/Adam_1)layer_fc1/kernel/Adam_1/Initializer/zeros* 
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(

layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:


%layer_fc1/bias/Adam/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Є
layer_fc1/bias/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias
в
layer_fc1/bias/Adam/AssignAssignlayer_fc1/bias/Adam%layer_fc1/bias/Adam/Initializer/zeros*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

layer_fc1/bias/Adam/readIdentitylayer_fc1/bias/Adam*
_output_shapes	
:*
T0*!
_class
loc:@layer_fc1/bias

'layer_fc1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:*!
_class
loc:@layer_fc1/bias*
valueB*    
І
layer_fc1/bias/Adam_1
VariableV2*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:*
dtype0
и
layer_fc1/bias/Adam_1/AssignAssignlayer_fc1/bias/Adam_1'layer_fc1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:

layer_fc1/bias/Adam_1/readIdentitylayer_fc1/bias/Adam_1*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:
Ћ
6word_embeddings/Adam/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@word_embeddings*
valueB"      *
dtype0*
_output_shapes
:

,word_embeddings/Adam/Initializer/zeros/ConstConst*"
_class
loc:@word_embeddings*
valueB
 *    *
dtype0*
_output_shapes
: 
є
&word_embeddings/Adam/Initializer/zerosFill6word_embeddings/Adam/Initializer/zeros/shape_as_tensor,word_embeddings/Adam/Initializer/zeros/Const*
T0*"
_class
loc:@word_embeddings*

index_type0*
_output_shapes
:	 
Ў
word_embeddings/Adam
VariableV2*"
_class
loc:@word_embeddings*
	container *
shape:	 *
dtype0*
_output_shapes
:	 *
shared_name 
к
word_embeddings/Adam/AssignAssignword_embeddings/Adam&word_embeddings/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 

word_embeddings/Adam/readIdentityword_embeddings/Adam*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
­
8word_embeddings/Adam_1/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@word_embeddings*
valueB"      *
dtype0*
_output_shapes
:

.word_embeddings/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *"
_class
loc:@word_embeddings*
valueB
 *    *
dtype0
њ
(word_embeddings/Adam_1/Initializer/zerosFill8word_embeddings/Adam_1/Initializer/zeros/shape_as_tensor.word_embeddings/Adam_1/Initializer/zeros/Const*
T0*"
_class
loc:@word_embeddings*

index_type0*
_output_shapes
:	 
А
word_embeddings/Adam_1
VariableV2*
shared_name *"
_class
loc:@word_embeddings*
	container *
shape:	 *
dtype0*
_output_shapes
:	 
р
word_embeddings/Adam_1/AssignAssignword_embeddings/Adam_1(word_embeddings/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 

word_embeddings/Adam_1/readIdentityword_embeddings/Adam_1*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
П
@rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   *
dtype0*
_output_shapes
:
Љ
6rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0rnn/basic_rnn_cell/kernel/Adam/Initializer/zerosFill@rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros/shape_as_tensor6rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*

index_type0*
_output_shapes

:`@
Р
rnn/basic_rnn_cell/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:`@*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
	container *
shape
:`@

%rnn/basic_rnn_cell/kernel/Adam/AssignAssignrnn/basic_rnn_cell/kernel/Adam0rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@*
use_locking(
І
#rnn/basic_rnn_cell/kernel/Adam/readIdentityrnn/basic_rnn_cell/kernel/Adam*
_output_shapes

:`@*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel
С
Brnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   *
dtype0*
_output_shapes
:
Ћ
8rnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *    
Ё
2rnn/basic_rnn_cell/kernel/Adam_1/Initializer/zerosFillBrnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensor8rnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*

index_type0*
_output_shapes

:`@
Т
 rnn/basic_rnn_cell/kernel/Adam_1
VariableV2*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
	container *
shape
:`@*
dtype0*
_output_shapes

:`@*
shared_name 

'rnn/basic_rnn_cell/kernel/Adam_1/AssignAssign rnn/basic_rnn_cell/kernel/Adam_12rnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:`@*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel
Њ
%rnn/basic_rnn_cell/kernel/Adam_1/readIdentity rnn/basic_rnn_cell/kernel/Adam_1*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes

:`@
Ї
.rnn/basic_rnn_cell/bias/Adam/Initializer/zerosConst**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Д
rnn/basic_rnn_cell/bias/Adam
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias*
	container 
ѕ
#rnn/basic_rnn_cell/bias/Adam/AssignAssignrnn/basic_rnn_cell/bias/Adam.rnn/basic_rnn_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@

!rnn/basic_rnn_cell/bias/Adam/readIdentityrnn/basic_rnn_cell/bias/Adam*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
_output_shapes
:@
Љ
0rnn/basic_rnn_cell/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ж
rnn/basic_rnn_cell/bias/Adam_1
VariableV2*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
ћ
%rnn/basic_rnn_cell/bias/Adam_1/AssignAssignrnn/basic_rnn_cell/bias/Adam_10rnn/basic_rnn_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@
 
#rnn/basic_rnn_cell/bias/Adam_1/readIdentityrnn/basic_rnn_cell/bias/Adam_1*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
_output_shapes
:@
З
<layer_rnn_fc_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Ё
2layer_rnn_fc_1/kernel/Adam/Initializer/zeros/ConstConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

,layer_rnn_fc_1/kernel/Adam/Initializer/zerosFill<layer_rnn_fc_1/kernel/Adam/Initializer/zeros/shape_as_tensor2layer_rnn_fc_1/kernel/Adam/Initializer/zeros/Const*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*

index_type0*
_output_shapes
:	@
К
layer_rnn_fc_1/kernel/Adam
VariableV2*
shared_name *(
_class
loc:@layer_rnn_fc_1/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
:	@
ђ
!layer_rnn_fc_1/kernel/Adam/AssignAssignlayer_rnn_fc_1/kernel/Adam,layer_rnn_fc_1/kernel/Adam/Initializer/zeros*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0

layer_rnn_fc_1/kernel/Adam/readIdentitylayer_rnn_fc_1/kernel/Adam*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@
Й
>layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Ѓ
4layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *    *
dtype0

.layer_rnn_fc_1/kernel/Adam_1/Initializer/zerosFill>layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor4layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros/Const*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*

index_type0*
_output_shapes
:	@
М
layer_rnn_fc_1/kernel/Adam_1
VariableV2*
shared_name *(
_class
loc:@layer_rnn_fc_1/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
:	@
ј
#layer_rnn_fc_1/kernel/Adam_1/AssignAssignlayer_rnn_fc_1/kernel/Adam_1.layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(

!layer_rnn_fc_1/kernel/Adam_1/readIdentitylayer_rnn_fc_1/kernel/Adam_1*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@
Ё
*layer_rnn_fc_1/bias/Adam/Initializer/zerosConst*&
_class
loc:@layer_rnn_fc_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ў
layer_rnn_fc_1/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:
ц
layer_rnn_fc_1/bias/Adam/AssignAssignlayer_rnn_fc_1/bias/Adam*layer_rnn_fc_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:

layer_rnn_fc_1/bias/Adam/readIdentitylayer_rnn_fc_1/bias/Adam*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
_output_shapes	
:
Ѓ
,layer_rnn_fc_1/bias/Adam_1/Initializer/zerosConst*&
_class
loc:@layer_rnn_fc_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
А
layer_rnn_fc_1/bias/Adam_1
VariableV2*&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ь
!layer_rnn_fc_1/bias/Adam_1/AssignAssignlayer_rnn_fc_1/bias/Adam_1,layer_rnn_fc_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:

layer_rnn_fc_1/bias/Adam_1/readIdentitylayer_rnn_fc_1/bias/Adam_1*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
_output_shapes	
:
П
@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"      *
dtype0*
_output_shapes
:
Љ
6layer_combine_fc_x/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0layer_combine_fc_x/kernel/Adam/Initializer/zerosFill@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_x/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0* 
_output_shapes
:

Ф
layer_combine_fc_x/kernel/Adam
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel

%layer_combine_fc_x/kernel/Adam/AssignAssignlayer_combine_fc_x/kernel/Adam0layer_combine_fc_x/kernel/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:

Ј
#layer_combine_fc_x/kernel/Adam/readIdentitylayer_combine_fc_x/kernel/Adam*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
*
T0
С
Blayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ћ
8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѓ
2layer_combine_fc_x/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0* 
_output_shapes
:

Ц
 layer_combine_fc_x/kernel/Adam_1
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel

'layer_combine_fc_x/kernel/Adam_1/AssignAssign layer_combine_fc_x/kernel/Adam_12layer_combine_fc_x/kernel/Adam_1/Initializer/zeros*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ќ
%layer_combine_fc_x/kernel/Adam_1/readIdentity layer_combine_fc_x/kernel/Adam_1*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:

Љ
.layer_combine_fc_x/bias/Adam/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ж
layer_combine_fc_x/bias/Adam
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container 
і
#layer_combine_fc_x/bias/Adam/AssignAssignlayer_combine_fc_x/bias/Adam.layer_combine_fc_x/bias/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:

!layer_combine_fc_x/bias/Adam/readIdentitylayer_combine_fc_x/bias/Adam*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:
Ћ
0layer_combine_fc_x/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB*    *
dtype0*
_output_shapes	
:
И
layer_combine_fc_x/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:
ќ
%layer_combine_fc_x/bias/Adam_1/AssignAssignlayer_combine_fc_x/bias/Adam_10layer_combine_fc_x/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:
Ё
#layer_combine_fc_x/bias/Adam_1/readIdentitylayer_combine_fc_x/bias/Adam_1*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:
П
@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"      *
dtype0*
_output_shapes
:
Љ
6layer_combine_fc_y/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0

0layer_combine_fc_y/kernel/Adam/Initializer/zerosFill@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_y/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	
Т
layer_combine_fc_y/kernel/Adam
VariableV2*
_output_shapes
:	*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	*
dtype0

%layer_combine_fc_y/kernel/Adam/AssignAssignlayer_combine_fc_y/kernel/Adam0layer_combine_fc_y/kernel/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	
Ї
#layer_combine_fc_y/kernel/Adam/readIdentitylayer_combine_fc_y/kernel/Adam*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	
С
Blayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ћ
8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ђ
2layer_combine_fc_y/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/Const*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	*
T0
Ф
 layer_combine_fc_y/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	

'layer_combine_fc_y/kernel/Adam_1/AssignAssign layer_combine_fc_y/kernel/Adam_12layer_combine_fc_y/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	
Ћ
%layer_combine_fc_y/kernel/Adam_1/readIdentity layer_combine_fc_y/kernel/Adam_1*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	
Ї
.layer_combine_fc_y/bias/Adam/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
Д
layer_combine_fc_y/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:
ѕ
#layer_combine_fc_y/bias/Adam/AssignAssignlayer_combine_fc_y/bias/Adam.layer_combine_fc_y/bias/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:

!layer_combine_fc_y/bias/Adam/readIdentitylayer_combine_fc_y/bias/Adam*
T0**
_class 
loc:@layer_combine_fc_y/bias*
_output_shapes
:
Љ
0layer_combine_fc_y/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
Ж
layer_combine_fc_y/bias/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias
ћ
%layer_combine_fc_y/bias/Adam_1/AssignAssignlayer_combine_fc_y/bias/Adam_10layer_combine_fc_y/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
 
#layer_combine_fc_y/bias/Adam_1/readIdentitylayer_combine_fc_y/bias/Adam_1*
T0**
_class 
loc:@layer_combine_fc_y/bias*
_output_shapes
:
W
Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *Зб8
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 

(Adam/update_layer_conv1/kernel/ApplyAdam	ApplyAdamlayer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_conv1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*%
_class
loc:@layer_conv1/kernel*
use_nesterov( *&
_output_shapes
: 

&Adam/update_layer_conv1/bias/ApplyAdam	ApplyAdamlayer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_conv1/bias*
use_nesterov( *
_output_shapes
: 

(Adam/update_layer_conv2/kernel/ApplyAdam	ApplyAdamlayer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*%
_class
loc:@layer_conv2/kernel*
use_nesterov( *&
_output_shapes
:  

&Adam/update_layer_conv2/bias/ApplyAdam	ApplyAdamlayer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*#
_class
loc:@layer_conv2/bias

&Adam/update_layer_fc1/kernel/ApplyAdam	ApplyAdamlayer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_fc1/kernel*
use_nesterov( * 
_output_shapes
:

ј
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:*
use_locking( *
T0*!
_class
loc:@layer_fc1/bias*
use_nesterov( 
Ч
"Adam/update_word_embeddings/UniqueUnique)gradients/embedding_lookup_grad/Reshape_1*
out_idx0*
T0	*"
_class
loc:@word_embeddings*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ї
!Adam/update_word_embeddings/ShapeShape"Adam/update_word_embeddings/Unique*
T0	*"
_class
loc:@word_embeddings*
out_type0*
_output_shapes
:

/Adam/update_word_embeddings/strided_slice/stackConst*
_output_shapes
:*"
_class
loc:@word_embeddings*
valueB: *
dtype0

1Adam/update_word_embeddings/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*"
_class
loc:@word_embeddings*
valueB:

1Adam/update_word_embeddings/strided_slice/stack_2Const*
_output_shapes
:*"
_class
loc:@word_embeddings*
valueB:*
dtype0
Љ
)Adam/update_word_embeddings/strided_sliceStridedSlice!Adam/update_word_embeddings/Shape/Adam/update_word_embeddings/strided_slice/stack1Adam/update_word_embeddings/strided_slice/stack_11Adam/update_word_embeddings/strided_slice/stack_2*
Index0*
T0*"
_class
loc:@word_embeddings*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
И
.Adam/update_word_embeddings/UnsortedSegmentSumUnsortedSegmentSum'gradients/embedding_lookup_grad/Reshape$Adam/update_word_embeddings/Unique:1)Adam/update_word_embeddings/strided_slice*
T0*"
_class
loc:@word_embeddings*'
_output_shapes
:џџџџџџџџџ *
Tnumsegments0*
Tindices0

!Adam/update_word_embeddings/sub/xConst*"
_class
loc:@word_embeddings*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Adam/update_word_embeddings/subSub!Adam/update_word_embeddings/sub/xbeta2_power/read*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 

 Adam/update_word_embeddings/SqrtSqrtAdam/update_word_embeddings/sub*
_output_shapes
: *
T0*"
_class
loc:@word_embeddings
Ё
Adam/update_word_embeddings/mulMulAdam/learning_rate Adam/update_word_embeddings/Sqrt*
_output_shapes
: *
T0*"
_class
loc:@word_embeddings

#Adam/update_word_embeddings/sub_1/xConst*"
_class
loc:@word_embeddings*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Є
!Adam/update_word_embeddings/sub_1Sub#Adam/update_word_embeddings/sub_1/xbeta1_power/read*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
З
#Adam/update_word_embeddings/truedivRealDivAdam/update_word_embeddings/mul!Adam/update_word_embeddings/sub_1*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 

#Adam/update_word_embeddings/sub_2/xConst*"
_class
loc:@word_embeddings*
valueB
 *  ?*
dtype0*
_output_shapes
: 

!Adam/update_word_embeddings/sub_2Sub#Adam/update_word_embeddings/sub_2/x
Adam/beta1*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
б
!Adam/update_word_embeddings/mul_1Mul.Adam/update_word_embeddings/UnsortedSegmentSum!Adam/update_word_embeddings/sub_2*'
_output_shapes
:џџџџџџџџџ *
T0*"
_class
loc:@word_embeddings

!Adam/update_word_embeddings/mul_2Mulword_embeddings/Adam/read
Adam/beta1*
_output_shapes
:	 *
T0*"
_class
loc:@word_embeddings
м
"Adam/update_word_embeddings/AssignAssignword_embeddings/Adam!Adam/update_word_embeddings/mul_2*
validate_shape(*
_output_shapes
:	 *
use_locking( *
T0*"
_class
loc:@word_embeddings
Ї
&Adam/update_word_embeddings/ScatterAdd
ScatterAddword_embeddings/Adam"Adam/update_word_embeddings/Unique!Adam/update_word_embeddings/mul_1#^Adam/update_word_embeddings/Assign*
use_locking( *
Tindices0	*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
о
!Adam/update_word_embeddings/mul_3Mul.Adam/update_word_embeddings/UnsortedSegmentSum.Adam/update_word_embeddings/UnsortedSegmentSum*
T0*"
_class
loc:@word_embeddings*'
_output_shapes
:џџџџџџџџџ 

#Adam/update_word_embeddings/sub_3/xConst*"
_class
loc:@word_embeddings*
valueB
 *  ?*
dtype0*
_output_shapes
: 

!Adam/update_word_embeddings/sub_3Sub#Adam/update_word_embeddings/sub_3/x
Adam/beta2*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
Ф
!Adam/update_word_embeddings/mul_4Mul!Adam/update_word_embeddings/mul_3!Adam/update_word_embeddings/sub_3*
T0*"
_class
loc:@word_embeddings*'
_output_shapes
:џџџџџџџџџ 

!Adam/update_word_embeddings/mul_5Mulword_embeddings/Adam_1/read
Adam/beta2*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
р
$Adam/update_word_embeddings/Assign_1Assignword_embeddings/Adam_1!Adam/update_word_embeddings/mul_5*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 *
use_locking( *
T0
­
(Adam/update_word_embeddings/ScatterAdd_1
ScatterAddword_embeddings/Adam_1"Adam/update_word_embeddings/Unique!Adam/update_word_embeddings/mul_4%^Adam/update_word_embeddings/Assign_1*
use_locking( *
Tindices0	*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
Ђ
"Adam/update_word_embeddings/Sqrt_1Sqrt(Adam/update_word_embeddings/ScatterAdd_1*"
_class
loc:@word_embeddings*
_output_shapes
:	 *
T0
У
!Adam/update_word_embeddings/mul_6Mul#Adam/update_word_embeddings/truediv&Adam/update_word_embeddings/ScatterAdd*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
І
Adam/update_word_embeddings/addAdd"Adam/update_word_embeddings/Sqrt_1Adam/epsilon*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
Т
%Adam/update_word_embeddings/truediv_1RealDiv!Adam/update_word_embeddings/mul_6Adam/update_word_embeddings/add*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
Ы
%Adam/update_word_embeddings/AssignSub	AssignSubword_embeddings%Adam/update_word_embeddings/truediv_1*
use_locking( *
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
Ю
&Adam/update_word_embeddings/group_depsNoOp&^Adam/update_word_embeddings/AssignSub'^Adam/update_word_embeddings/ScatterAdd)^Adam/update_word_embeddings/ScatterAdd_1*"
_class
loc:@word_embeddings
Г
/Adam/update_rnn/basic_rnn_cell/kernel/ApplyAdam	ApplyAdamrnn/basic_rnn_cell/kernelrnn/basic_rnn_cell/kernel/Adam rnn/basic_rnn_cell/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_3*
_output_shapes

:`@*
use_locking( *
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
use_nesterov( 
І
-Adam/update_rnn/basic_rnn_cell/bias/ApplyAdam	ApplyAdamrnn/basic_rnn_cell/biasrnn/basic_rnn_cell/bias/Adamrnn/basic_rnn_cell/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes
:@*
use_locking( *
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
use_nesterov( 
Ѓ
+Adam/update_layer_rnn_fc_1/kernel/ApplyAdam	ApplyAdamlayer_rnn_fc_1/kernellayer_rnn_fc_1/kernel/Adamlayer_rnn_fc_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/layer_rnn_fc_1/MatMul_grad/tuple/control_dependency_1*(
_class
loc:@layer_rnn_fc_1/kernel*
use_nesterov( *
_output_shapes
:	@*
use_locking( *
T0

)Adam/update_layer_rnn_fc_1/bias/ApplyAdam	ApplyAdamlayer_rnn_fc_1/biaslayer_rnn_fc_1/bias/Adamlayer_rnn_fc_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon@gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0*&
_class
loc:@layer_rnn_fc_1/bias
М
/Adam/update_layer_combine_fc_x/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
use_nesterov( * 
_output_shapes
:

Ў
-Adam/update_layer_combine_fc_x/bias/ApplyAdam	ApplyAdamlayer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_x/bias*
use_nesterov( *
_output_shapes	
:
Л
/Adam/update_layer_combine_fc_y/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
use_nesterov( *
_output_shapes
:	*
use_locking( 
­
-Adam/update_layer_combine_fc_y/bias/ApplyAdam	ApplyAdamlayer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_y/bias*
use_nesterov( *
_output_shapes
:

Adam/mulMulbeta1_power/read
Adam/beta1.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*^Adam/update_layer_rnn_fc_1/bias/ApplyAdam,^Adam/update_layer_rnn_fc_1/kernel/ApplyAdam.^Adam/update_rnn/basic_rnn_cell/bias/ApplyAdam0^Adam/update_rnn/basic_rnn_cell/kernel/ApplyAdam'^Adam/update_word_embeddings/group_deps**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes
: *
T0
Ђ
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0**
_class 
loc:@layer_combine_fc_x/bias


Adam/mul_1Mulbeta2_power/read
Adam/beta2.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*^Adam/update_layer_rnn_fc_1/bias/ApplyAdam,^Adam/update_layer_rnn_fc_1/kernel/ApplyAdam.^Adam/update_rnn/basic_rnn_cell/bias/ApplyAdam0^Adam/update_rnn/basic_rnn_cell/kernel/ApplyAdam'^Adam/update_word_embeddings/group_deps*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes
: 
І
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes
: 
в
Adam/updateNoOp^Adam/Assign^Adam/Assign_1.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*^Adam/update_layer_rnn_fc_1/bias/ApplyAdam,^Adam/update_layer_rnn_fc_1/kernel/ApplyAdam.^Adam/update_rnn/basic_rnn_cell/bias/ApplyAdam0^Adam/update_rnn/basic_rnn_cell/kernel/ApplyAdam'^Adam/update_word_embeddings/group_deps
z

Adam/valueConst^Adam/update*
_class
loc:@global_step*
value	B	 R*
dtype0	*
_output_shapes
: 
~
Adam	AssignAddglobal_step
Adam/value*
use_locking( *
T0	*
_class
loc:@global_step*
_output_shapes
: 
W
EqualEqualArgMaxIteratorGetNext:3*
T0	*#
_output_shapes
:џџџџџџџџџ
c
ToFloatCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0

 accuracy/total/Initializer/zerosConst*!
_class
loc:@accuracy/total*
valueB
 *    *
dtype0*
_output_shapes
: 

accuracy/total
VariableV2*
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/total*
	container *
shape: 
О
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/total*
validate_shape(*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 

 accuracy/count/Initializer/zerosConst*!
_class
loc:@accuracy/count*
valueB
 *    *
dtype0*
_output_shapes
: 

accuracy/count
VariableV2*
shared_name *!
_class
loc:@accuracy/count*
	container *
shape: *
dtype0*
_output_shapes
: 
О
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/count*
validate_shape(*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
O
accuracy/SizeSizeToFloat*
out_type0*
_output_shapes
: *
T0
g
accuracy/ToFloatCastaccuracy/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
Є
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat^ToFloat*
use_locking( *
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
X
accuracy/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
accuracy/GreaterGreateraccuracy/count/readaccuracy/zeros_like*
_output_shapes
: *
T0
r
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/zeros_like*
_output_shapes
: *
T0
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
_output_shapes
: *
T0
Z
accuracy/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
k
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
_output_shapes
: *
T0
|
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/zeros_like_1*
_output_shapes
: *
T0

mean_1/total/Initializer/zerosConst*
_class
loc:@mean_1/total*
valueB
 *    *
dtype0*
_output_shapes
: 

mean_1/total
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean_1/total*
	container *
shape: 
Ж
mean_1/total/AssignAssignmean_1/totalmean_1/total/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean_1/total*
validate_shape(*
_output_shapes
: 
m
mean_1/total/readIdentitymean_1/total*
T0*
_class
loc:@mean_1/total*
_output_shapes
: 

mean_1/count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
_class
loc:@mean_1/count*
valueB
 *    

mean_1/count
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean_1/count
Ж
mean_1/count/AssignAssignmean_1/countmean_1/count/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean_1/count*
validate_shape(*
_output_shapes
: 
m
mean_1/count/readIdentitymean_1/count*
T0*
_class
loc:@mean_1/count*
_output_shapes
: 
M
mean_1/SizeConst*
dtype0*
_output_shapes
: *
value	B :
c
mean_1/ToFloatCastmean_1/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
O
mean_1/ConstConst*
valueB *
dtype0*
_output_shapes
: 
c

mean_1/SumSumMeanmean_1/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

mean_1/AssignAdd	AssignAddmean_1/total
mean_1/Sum*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@mean_1/total

mean_1/AssignAdd_1	AssignAddmean_1/countmean_1/ToFloat^Mean*
use_locking( *
T0*
_class
loc:@mean_1/count*
_output_shapes
: 
`
mean_1/truedivRealDivmean_1/total/readmean_1/count/read*
_output_shapes
: *
T0
V
mean_1/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
`
mean_1/GreaterGreatermean_1/count/readmean_1/zeros_like*
_output_shapes
: *
T0
j
mean_1/valueSelectmean_1/Greatermean_1/truedivmean_1/zeros_like*
T0*
_output_shapes
: 
b
mean_1/truediv_1RealDivmean_1/AssignAddmean_1/AssignAdd_1*
T0*
_output_shapes
: 
X
mean_1/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
e
mean_1/Greater_1Greatermean_1/AssignAdd_1mean_1/zeros_like_1*
T0*
_output_shapes
: 
t
mean_1/update_opSelectmean_1/Greater_1mean_1/truediv_1mean_1/zeros_like_1*
T0*
_output_shapes
: 
:

group_depsNoOp^accuracy/update_op^mean_1/update_op
{
eval_step/Initializer/zerosConst*
_class
loc:@eval_step*
value	B	 R *
dtype0	*
_output_shapes
: 

	eval_step
VariableV2*
shared_name *
_class
loc:@eval_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
Њ
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@eval_step*
validate_shape(*
_output_shapes
: 
d
eval_step/readIdentity	eval_step*
T0	*
_class
loc:@eval_step*
_output_shapes
: 
Q
AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 

	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
use_locking(*
T0	*
_class
loc:@eval_step*
_output_shapes
: 
U
readIdentity	eval_step
^AssignAdd^group_deps*
T0	*
_output_shapes
: 
;
IdentityIdentityread*
_output_shapes
: *
T0	
М
initNoOp^beta1_power/Assign^beta2_power/Assign^global_step/Assign$^layer_combine_fc_x/bias/Adam/Assign&^layer_combine_fc_x/bias/Adam_1/Assign^layer_combine_fc_x/bias/Assign&^layer_combine_fc_x/kernel/Adam/Assign(^layer_combine_fc_x/kernel/Adam_1/Assign!^layer_combine_fc_x/kernel/Assign$^layer_combine_fc_y/bias/Adam/Assign&^layer_combine_fc_y/bias/Adam_1/Assign^layer_combine_fc_y/bias/Assign&^layer_combine_fc_y/kernel/Adam/Assign(^layer_combine_fc_y/kernel/Adam_1/Assign!^layer_combine_fc_y/kernel/Assign^layer_conv1/bias/Adam/Assign^layer_conv1/bias/Adam_1/Assign^layer_conv1/bias/Assign^layer_conv1/kernel/Adam/Assign!^layer_conv1/kernel/Adam_1/Assign^layer_conv1/kernel/Assign^layer_conv2/bias/Adam/Assign^layer_conv2/bias/Adam_1/Assign^layer_conv2/bias/Assign^layer_conv2/kernel/Adam/Assign!^layer_conv2/kernel/Adam_1/Assign^layer_conv2/kernel/Assign^layer_fc1/bias/Adam/Assign^layer_fc1/bias/Adam_1/Assign^layer_fc1/bias/Assign^layer_fc1/kernel/Adam/Assign^layer_fc1/kernel/Adam_1/Assign^layer_fc1/kernel/Assign ^layer_rnn_fc_1/bias/Adam/Assign"^layer_rnn_fc_1/bias/Adam_1/Assign^layer_rnn_fc_1/bias/Assign"^layer_rnn_fc_1/kernel/Adam/Assign$^layer_rnn_fc_1/kernel/Adam_1/Assign^layer_rnn_fc_1/kernel/Assign$^rnn/basic_rnn_cell/bias/Adam/Assign&^rnn/basic_rnn_cell/bias/Adam_1/Assign^rnn/basic_rnn_cell/bias/Assign&^rnn/basic_rnn_cell/kernel/Adam/Assign(^rnn/basic_rnn_cell/kernel/Adam_1/Assign!^rnn/basic_rnn_cell/kernel/Assign^word_embeddings/Adam/Assign^word_embeddings/Adam_1/Assign^word_embeddings/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
Џ
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Ћ
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
Џ
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Ћ
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias
Ћ
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel
Ї
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Љ
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedword_embeddings*
_output_shapes
: *"
_class
loc:@word_embeddings*
dtype0
Н
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedrnn/basic_rnn_cell/kernel*
_output_shapes
: *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0
Й
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedrnn/basic_rnn_cell/bias**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
Ж
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedlayer_rnn_fc_1/kernel*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
В
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializedlayer_rnn_fc_1/bias*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
О
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializedlayer_combine_fc_x/kernel*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0
К
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializedlayer_combine_fc_x/bias**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
О
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializedlayer_combine_fc_y/kernel*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel
К
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedlayer_combine_fc_y/bias**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
Ў
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedbeta1_power**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
Ў
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedbeta2_power**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
Е
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializedlayer_conv1/kernel/Adam*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
dtype0
З
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedlayer_conv1/bias/Adam*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
Г
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Е
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitializedlayer_conv2/kernel/Adam*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel
З
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitializedlayer_conv2/kernel/Adam_1*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
dtype0
Б
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedlayer_conv2/bias/Adam*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Г
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitializedlayer_conv2/bias/Adam_1*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
Б
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Г
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
­
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedlayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Џ
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Џ
7report_uninitialized_variables/IsVariableInitialized_30IsVariableInitializedword_embeddings/Adam*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_31IsVariableInitializedword_embeddings/Adam_1*
dtype0*
_output_shapes
: *"
_class
loc:@word_embeddings
У
7report_uninitialized_variables/IsVariableInitialized_32IsVariableInitializedrnn/basic_rnn_cell/kernel/Adam*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
Х
7report_uninitialized_variables/IsVariableInitialized_33IsVariableInitialized rnn/basic_rnn_cell/kernel/Adam_1*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
П
7report_uninitialized_variables/IsVariableInitialized_34IsVariableInitializedrnn/basic_rnn_cell/bias/Adam*
dtype0*
_output_shapes
: **
_class 
loc:@rnn/basic_rnn_cell/bias
С
7report_uninitialized_variables/IsVariableInitialized_35IsVariableInitializedrnn/basic_rnn_cell/bias/Adam_1**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
Л
7report_uninitialized_variables/IsVariableInitialized_36IsVariableInitializedlayer_rnn_fc_1/kernel/Adam*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
Н
7report_uninitialized_variables/IsVariableInitialized_37IsVariableInitializedlayer_rnn_fc_1/kernel/Adam_1*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
З
7report_uninitialized_variables/IsVariableInitialized_38IsVariableInitializedlayer_rnn_fc_1/bias/Adam*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
Й
7report_uninitialized_variables/IsVariableInitialized_39IsVariableInitializedlayer_rnn_fc_1/bias/Adam_1*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
У
7report_uninitialized_variables/IsVariableInitialized_40IsVariableInitializedlayer_combine_fc_x/kernel/Adam*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
Х
7report_uninitialized_variables/IsVariableInitialized_41IsVariableInitialized layer_combine_fc_x/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
П
7report_uninitialized_variables/IsVariableInitialized_42IsVariableInitializedlayer_combine_fc_x/bias/Adam**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
С
7report_uninitialized_variables/IsVariableInitialized_43IsVariableInitializedlayer_combine_fc_x/bias/Adam_1*
dtype0*
_output_shapes
: **
_class 
loc:@layer_combine_fc_x/bias
У
7report_uninitialized_variables/IsVariableInitialized_44IsVariableInitializedlayer_combine_fc_y/kernel/Adam*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
Х
7report_uninitialized_variables/IsVariableInitialized_45IsVariableInitialized layer_combine_fc_y/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
П
7report_uninitialized_variables/IsVariableInitialized_46IsVariableInitializedlayer_combine_fc_y/bias/Adam**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
С
7report_uninitialized_variables/IsVariableInitialized_47IsVariableInitializedlayer_combine_fc_y/bias/Adam_1**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
Ј
7report_uninitialized_variables/IsVariableInitialized_48IsVariableInitializedaccuracy/total*!
_class
loc:@accuracy/total*
dtype0*
_output_shapes
: 
Ј
7report_uninitialized_variables/IsVariableInitialized_49IsVariableInitializedaccuracy/count*
dtype0*
_output_shapes
: *!
_class
loc:@accuracy/count
Є
7report_uninitialized_variables/IsVariableInitialized_50IsVariableInitializedmean_1/total*
_output_shapes
: *
_class
loc:@mean_1/total*
dtype0
Є
7report_uninitialized_variables/IsVariableInitialized_51IsVariableInitializedmean_1/count*
_class
loc:@mean_1/count*
dtype0*
_output_shapes
: 

7report_uninitialized_variables/IsVariableInitialized_52IsVariableInitialized	eval_step*
dtype0	*
_output_shapes
: *
_class
loc:@eval_step
Ж
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_247report_uninitialized_variables/IsVariableInitialized_257report_uninitialized_variables/IsVariableInitialized_267report_uninitialized_variables/IsVariableInitialized_277report_uninitialized_variables/IsVariableInitialized_287report_uninitialized_variables/IsVariableInitialized_297report_uninitialized_variables/IsVariableInitialized_307report_uninitialized_variables/IsVariableInitialized_317report_uninitialized_variables/IsVariableInitialized_327report_uninitialized_variables/IsVariableInitialized_337report_uninitialized_variables/IsVariableInitialized_347report_uninitialized_variables/IsVariableInitialized_357report_uninitialized_variables/IsVariableInitialized_367report_uninitialized_variables/IsVariableInitialized_377report_uninitialized_variables/IsVariableInitialized_387report_uninitialized_variables/IsVariableInitialized_397report_uninitialized_variables/IsVariableInitialized_407report_uninitialized_variables/IsVariableInitialized_417report_uninitialized_variables/IsVariableInitialized_427report_uninitialized_variables/IsVariableInitialized_437report_uninitialized_variables/IsVariableInitialized_447report_uninitialized_variables/IsVariableInitialized_457report_uninitialized_variables/IsVariableInitialized_467report_uninitialized_variables/IsVariableInitialized_477report_uninitialized_variables/IsVariableInitialized_487report_uninitialized_variables/IsVariableInitialized_497report_uninitialized_variables/IsVariableInitialized_507report_uninitialized_variables/IsVariableInitialized_517report_uninitialized_variables/IsVariableInitialized_52"/device:CPU:0*

axis *
N5*
_output_shapes
:5*
T0


)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:5
є

$report_uninitialized_variables/ConstConst"/device:CPU:0*

value
Bџ	5Bglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBword_embeddingsBrnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/biasBlayer_rnn_fc_1/kernelBlayer_rnn_fc_1/biasBlayer_combine_fc_x/kernelBlayer_combine_fc_x/biasBlayer_combine_fc_y/kernelBlayer_combine_fc_y/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Bword_embeddings/AdamBword_embeddings/Adam_1Brnn/basic_rnn_cell/kernel/AdamB rnn/basic_rnn_cell/kernel/Adam_1Brnn/basic_rnn_cell/bias/AdamBrnn/basic_rnn_cell/bias/Adam_1Blayer_rnn_fc_1/kernel/AdamBlayer_rnn_fc_1/kernel/Adam_1Blayer_rnn_fc_1/bias/AdamBlayer_rnn_fc_1/bias/Adam_1Blayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Baccuracy/totalBaccuracy/countBmean_1/totalBmean_1/countB	eval_step*
dtype0*
_output_shapes
:5

1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
valueB:5*
dtype0*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ш
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:5*
dtype0

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
№
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
: 

3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:5*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
№
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0
О
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ї
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:*

Tidx0
к
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
_output_shapes
:5*
T0*
Tshape0

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ъ
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:5
В
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:џџџџџџџџџ*
T0

Х
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Х
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
O
concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Т
concat_1ConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat_1/axis*
T0*
N*#
_output_shapes
:џџџџџџџџџ*

Tidx0
Ё
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_output_shapes
: *
_class
loc:@global_step*
dtype0	
Б
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Б
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
dtype0
­
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Љ
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Ћ
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedword_embeddings*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
П
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedrnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: *,
_class"
 loc:@rnn/basic_rnn_cell/kernel
Л
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedrnn/basic_rnn_cell/bias**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
И
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedlayer_rnn_fc_1/kernel*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
Д
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializedlayer_rnn_fc_1/bias*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
Р
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializedlayer_combine_fc_x/kernel*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
М
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializedlayer_combine_fc_x/bias**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
Р
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializedlayer_combine_fc_y/kernel*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
М
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedlayer_combine_fc_y/bias**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
А
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedbeta1_power**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
А
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedbeta2_power**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
З
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializedlayer_conv1/kernel/Adam*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel
Й
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
З
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitializedlayer_conv2/kernel/Adam*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
dtype0
Й
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedlayer_conv2/bias/Adam*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
Е
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitializedlayer_conv2/bias/Adam_1*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
Г
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_27IsVariableInitializedlayer_fc1/kernel/Adam_1*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
dtype0
Џ
9report_uninitialized_variables_1/IsVariableInitialized_28IsVariableInitializedlayer_fc1/bias/Adam*
dtype0*
_output_shapes
: *!
_class
loc:@layer_fc1/bias
Б
9report_uninitialized_variables_1/IsVariableInitialized_29IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Б
9report_uninitialized_variables_1/IsVariableInitialized_30IsVariableInitializedword_embeddings/Adam*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_31IsVariableInitializedword_embeddings/Adam_1*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
Х
9report_uninitialized_variables_1/IsVariableInitialized_32IsVariableInitializedrnn/basic_rnn_cell/kernel/Adam*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
Ч
9report_uninitialized_variables_1/IsVariableInitialized_33IsVariableInitialized rnn/basic_rnn_cell/kernel/Adam_1*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
С
9report_uninitialized_variables_1/IsVariableInitialized_34IsVariableInitializedrnn/basic_rnn_cell/bias/Adam**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
У
9report_uninitialized_variables_1/IsVariableInitialized_35IsVariableInitializedrnn/basic_rnn_cell/bias/Adam_1**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
Н
9report_uninitialized_variables_1/IsVariableInitialized_36IsVariableInitializedlayer_rnn_fc_1/kernel/Adam*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
П
9report_uninitialized_variables_1/IsVariableInitialized_37IsVariableInitializedlayer_rnn_fc_1/kernel/Adam_1*
dtype0*
_output_shapes
: *(
_class
loc:@layer_rnn_fc_1/kernel
Й
9report_uninitialized_variables_1/IsVariableInitialized_38IsVariableInitializedlayer_rnn_fc_1/bias/Adam*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
Л
9report_uninitialized_variables_1/IsVariableInitialized_39IsVariableInitializedlayer_rnn_fc_1/bias/Adam_1*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
Х
9report_uninitialized_variables_1/IsVariableInitialized_40IsVariableInitializedlayer_combine_fc_x/kernel/Adam*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0
Ч
9report_uninitialized_variables_1/IsVariableInitialized_41IsVariableInitialized layer_combine_fc_x/kernel/Adam_1*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel
С
9report_uninitialized_variables_1/IsVariableInitialized_42IsVariableInitializedlayer_combine_fc_x/bias/Adam**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
У
9report_uninitialized_variables_1/IsVariableInitialized_43IsVariableInitializedlayer_combine_fc_x/bias/Adam_1**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
Х
9report_uninitialized_variables_1/IsVariableInitialized_44IsVariableInitializedlayer_combine_fc_y/kernel/Adam*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
Ч
9report_uninitialized_variables_1/IsVariableInitialized_45IsVariableInitialized layer_combine_fc_y/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
С
9report_uninitialized_variables_1/IsVariableInitialized_46IsVariableInitializedlayer_combine_fc_y/bias/Adam**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
У
9report_uninitialized_variables_1/IsVariableInitialized_47IsVariableInitializedlayer_combine_fc_y/bias/Adam_1*
_output_shapes
: **
_class 
loc:@layer_combine_fc_y/bias*
dtype0
ћ
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_199report_uninitialized_variables_1/IsVariableInitialized_209report_uninitialized_variables_1/IsVariableInitialized_219report_uninitialized_variables_1/IsVariableInitialized_229report_uninitialized_variables_1/IsVariableInitialized_239report_uninitialized_variables_1/IsVariableInitialized_249report_uninitialized_variables_1/IsVariableInitialized_259report_uninitialized_variables_1/IsVariableInitialized_269report_uninitialized_variables_1/IsVariableInitialized_279report_uninitialized_variables_1/IsVariableInitialized_289report_uninitialized_variables_1/IsVariableInitialized_299report_uninitialized_variables_1/IsVariableInitialized_309report_uninitialized_variables_1/IsVariableInitialized_319report_uninitialized_variables_1/IsVariableInitialized_329report_uninitialized_variables_1/IsVariableInitialized_339report_uninitialized_variables_1/IsVariableInitialized_349report_uninitialized_variables_1/IsVariableInitialized_359report_uninitialized_variables_1/IsVariableInitialized_369report_uninitialized_variables_1/IsVariableInitialized_379report_uninitialized_variables_1/IsVariableInitialized_389report_uninitialized_variables_1/IsVariableInitialized_399report_uninitialized_variables_1/IsVariableInitialized_409report_uninitialized_variables_1/IsVariableInitialized_419report_uninitialized_variables_1/IsVariableInitialized_429report_uninitialized_variables_1/IsVariableInitialized_439report_uninitialized_variables_1/IsVariableInitialized_449report_uninitialized_variables_1/IsVariableInitialized_459report_uninitialized_variables_1/IsVariableInitialized_469report_uninitialized_variables_1/IsVariableInitialized_47"/device:CPU:0*
T0
*

axis *
N0*
_output_shapes
:0

+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:0
Џ

&report_uninitialized_variables_1/ConstConst"/device:CPU:0*Х	
valueЛ	BИ	0Bglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBword_embeddingsBrnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/biasBlayer_rnn_fc_1/kernelBlayer_rnn_fc_1/biasBlayer_combine_fc_x/kernelBlayer_combine_fc_x/biasBlayer_combine_fc_y/kernelBlayer_combine_fc_y/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Bword_embeddings/AdamBword_embeddings/Adam_1Brnn/basic_rnn_cell/kernel/AdamB rnn/basic_rnn_cell/kernel/Adam_1Brnn/basic_rnn_cell/bias/AdamBrnn/basic_rnn_cell/bias/Adam_1Blayer_rnn_fc_1/kernel/AdamBlayer_rnn_fc_1/kernel/Adam_1Blayer_rnn_fc_1/bias/AdamBlayer_rnn_fc_1/bias/Adam_1Blayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1*
dtype0*
_output_shapes
:0

3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:0*
dtype0*
_output_shapes
:

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ђ
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:0*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
њ
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:0

Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
њ
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
Т
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*

Tidx0*
T0*
N*
_output_shapes
:
р
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:0

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
№
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
_output_shapes
:0*
T0
*
Tshape0
Ж
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:џџџџџџџџџ
Щ
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Э
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Tparams0*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
}
init_2NoOp^accuracy/count/Assign^accuracy/total/Assign^eval_step/Assign^mean_1/count/Assign^mean_1/total/Assign

init_all_tablesNoOp

init_3NoOp
8
group_deps_2NoOp^init_2^init_3^init_all_tables
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_d200258616b54933a0170a007d7ab933/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ё

save/SaveV2/tensor_namesConst"/device:CPU:0*Х	
valueЛ	BИ	0Bbeta1_powerBbeta2_powerBglobal_stepBlayer_combine_fc_x/biasBlayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_x/kernelBlayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_y/biasBlayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Blayer_combine_fc_y/kernelBlayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_rnn_fc_1/biasBlayer_rnn_fc_1/bias/AdamBlayer_rnn_fc_1/bias/Adam_1Blayer_rnn_fc_1/kernelBlayer_rnn_fc_1/kernel/AdamBlayer_rnn_fc_1/kernel/Adam_1Brnn/basic_rnn_cell/biasBrnn/basic_rnn_cell/bias/AdamBrnn/basic_rnn_cell/bias/Adam_1Brnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/kernel/AdamB rnn/basic_rnn_cell/kernel/Adam_1Bword_embeddingsBword_embeddings/AdamBword_embeddings/Adam_1*
dtype0*
_output_shapes
:0
в
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
т

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerglobal_steplayer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1layer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1layer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1layer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1layer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1layer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1layer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1layer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1layer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1layer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1layer_rnn_fc_1/biaslayer_rnn_fc_1/bias/Adamlayer_rnn_fc_1/bias/Adam_1layer_rnn_fc_1/kernellayer_rnn_fc_1/kernel/Adamlayer_rnn_fc_1/kernel/Adam_1rnn/basic_rnn_cell/biasrnn/basic_rnn_cell/bias/Adamrnn/basic_rnn_cell/bias/Adam_1rnn/basic_rnn_cell/kernelrnn/basic_rnn_cell/kernel/Adam rnn/basic_rnn_cell/kernel/Adam_1word_embeddingsword_embeddings/Adamword_embeddings/Adam_1"/device:CPU:0*>
dtypes4
220	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
Ќ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
Є

save/RestoreV2/tensor_namesConst"/device:CPU:0*Х	
valueЛ	BИ	0Bbeta1_powerBbeta2_powerBglobal_stepBlayer_combine_fc_x/biasBlayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_x/kernelBlayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_y/biasBlayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Blayer_combine_fc_y/kernelBlayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_rnn_fc_1/biasBlayer_rnn_fc_1/bias/AdamBlayer_rnn_fc_1/bias/Adam_1Blayer_rnn_fc_1/kernelBlayer_rnn_fc_1/kernel/AdamBlayer_rnn_fc_1/kernel/Adam_1Brnn/basic_rnn_cell/biasBrnn/basic_rnn_cell/bias/AdamBrnn/basic_rnn_cell/bias/Adam_1Brnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/kernel/AdamB rnn/basic_rnn_cell/kernel/Adam_1Bword_embeddingsBword_embeddings/AdamBword_embeddings/Adam_1*
dtype0*
_output_shapes
:0
е
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*ж
_output_shapesУ
Р::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220	
Ј
save/AssignAssignbeta1_powersave/RestoreV2*
_output_shapes
: *
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(
Ќ
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias
 
save/Assign_2Assignglobal_stepsave/RestoreV2:2*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
Н
save/Assign_3Assignlayer_combine_fc_x/biassave/RestoreV2:3*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Т
save/Assign_4Assignlayer_combine_fc_x/bias/Adamsave/RestoreV2:4*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:
Ф
save/Assign_5Assignlayer_combine_fc_x/bias/Adam_1save/RestoreV2:5*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:
Ц
save/Assign_6Assignlayer_combine_fc_x/kernelsave/RestoreV2:6*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:

Ы
save/Assign_7Assignlayer_combine_fc_x/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:

Э
save/Assign_8Assign layer_combine_fc_x/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:

М
save/Assign_9Assignlayer_combine_fc_y/biassave/RestoreV2:9*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
У
save/Assign_10Assignlayer_combine_fc_y/bias/Adamsave/RestoreV2:10*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
Х
save/Assign_11Assignlayer_combine_fc_y/bias/Adam_1save/RestoreV2:11**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ч
save/Assign_12Assignlayer_combine_fc_y/kernelsave/RestoreV2:12*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
Ь
save/Assign_13Assignlayer_combine_fc_y/kernel/Adamsave/RestoreV2:13*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
Ю
save/Assign_14Assign layer_combine_fc_y/kernel/Adam_1save/RestoreV2:14*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
А
save/Assign_15Assignlayer_conv1/biassave/RestoreV2:15*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Е
save/Assign_16Assignlayer_conv1/bias/Adamsave/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
З
save/Assign_17Assignlayer_conv1/bias/Adam_1save/RestoreV2:17*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias
Р
save/Assign_18Assignlayer_conv1/kernelsave/RestoreV2:18*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Х
save/Assign_19Assignlayer_conv1/kernel/Adamsave/RestoreV2:19*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Ч
save/Assign_20Assignlayer_conv1/kernel/Adam_1save/RestoreV2:20*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
А
save/Assign_21Assignlayer_conv2/biassave/RestoreV2:21*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
Е
save/Assign_22Assignlayer_conv2/bias/Adamsave/RestoreV2:22*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias
З
save/Assign_23Assignlayer_conv2/bias/Adam_1save/RestoreV2:23*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Р
save/Assign_24Assignlayer_conv2/kernelsave/RestoreV2:24*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  
Х
save/Assign_25Assignlayer_conv2/kernel/Adamsave/RestoreV2:25*&
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(
Ч
save/Assign_26Assignlayer_conv2/kernel/Adam_1save/RestoreV2:26*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0
­
save/Assign_27Assignlayer_fc1/biassave/RestoreV2:27*
_output_shapes	
:*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(
В
save/Assign_28Assignlayer_fc1/bias/Adamsave/RestoreV2:28*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
Д
save/Assign_29Assignlayer_fc1/bias/Adam_1save/RestoreV2:29*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
Ж
save/Assign_30Assignlayer_fc1/kernelsave/RestoreV2:30*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:

Л
save/Assign_31Assignlayer_fc1/kernel/Adamsave/RestoreV2:31*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel
Н
save/Assign_32Assignlayer_fc1/kernel/Adam_1save/RestoreV2:32*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:

З
save/Assign_33Assignlayer_rnn_fc_1/biassave/RestoreV2:33*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
М
save/Assign_34Assignlayer_rnn_fc_1/bias/Adamsave/RestoreV2:34*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:
О
save/Assign_35Assignlayer_rnn_fc_1/bias/Adam_1save/RestoreV2:35*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:
П
save/Assign_36Assignlayer_rnn_fc_1/kernelsave/RestoreV2:36*
_output_shapes
:	@*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(
Ф
save/Assign_37Assignlayer_rnn_fc_1/kernel/Adamsave/RestoreV2:37*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@
Ц
save/Assign_38Assignlayer_rnn_fc_1/kernel/Adam_1save/RestoreV2:38*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@
О
save/Assign_39Assignrnn/basic_rnn_cell/biassave/RestoreV2:39*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@
У
save/Assign_40Assignrnn/basic_rnn_cell/bias/Adamsave/RestoreV2:40*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@
Х
save/Assign_41Assignrnn/basic_rnn_cell/bias/Adam_1save/RestoreV2:41*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@
Ц
save/Assign_42Assignrnn/basic_rnn_cell/kernelsave/RestoreV2:42*
_output_shapes

:`@*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(
Ы
save/Assign_43Assignrnn/basic_rnn_cell/kernel/Adamsave/RestoreV2:43*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
Э
save/Assign_44Assign rnn/basic_rnn_cell/kernel/Adam_1save/RestoreV2:44*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
Г
save/Assign_45Assignword_embeddingssave/RestoreV2:45*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 
И
save/Assign_46Assignword_embeddings/Adamsave/RestoreV2:46*
_output_shapes
:	 *
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(
К
save/Assign_47Assignword_embeddings/Adam_1save/RestoreV2:47*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 
О
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shardе
у
2
_make_dataset_soWvMtuA5sU
batchdatasetv2h
TensorSliceDataset/ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0Ї
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
T0*
Tshape0
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
output_shapes
: *
Toutput_types
2Ц
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9U*
output_types
2*

Targuments
 *
output_shapes
: №

MapDataset
MapDatasetFlatMapDataset:handle:0"/device:CPU:0*(
output_shapes
:@:@:: *8
f3R1
/tf_data_structured_function_wrapper_IJ2bRSPJECE*
output_types
2				*
use_inter_op_parallelism(*

Targuments
 L
RepeatDataset/countConst"/device:CPU:0*
dtype0	*
value	B	 RЄ
RepeatDatasetRepeatDatasetMapDataset:handle:0RepeatDataset/count:output:0"/device:CPU:0*
output_types
2				*(
output_shapes
:@:@:: S
BatchDatasetV2/batch_sizeConst"/device:CPU:0*
value
B	 R'*
dtype0	V
BatchDatasetV2/drop_remainderConst"/device:CPU:0*
dtype0
*
value	B
 Z 
BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0"BatchDatasetV2/batch_size:output:0&BatchDatasetV2/drop_remainder:output:0"/device:CPU:0*
output_types
2				*\
output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ")
batchdatasetv2BatchDatasetV2:handle:0
Х

/tf_data_structured_function_wrapper_52oRgbbAY9U
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.H
compression_typeConst"/device:CPU:0*
valueB B *
dtype0F
buffer_sizeConst"/device:CPU:0*
valueB		 R*
dtype0	h
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"/device:CPU:0"+
tfrecorddatasetTFRecordDataset:handle:0
Є
Г
/tf_data_structured_function_wrapper_IJ2bRSPJECE
arg0)
%parsesingleexample_parsesingleexample	+
'parsesingleexample_parsesingleexample_0	+
'parsesingleexample_parsesingleexample_1	+
'parsesingleexample_parsesingleexample_2	2DWrapper for passing nested structures to and from tf.data functions.P
ParseSingleExample/ConstConst"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_1Const"/device:CPU:0*
dtype0	*
valueB	 R
ParseSingleExample/Const_2Const"/device:CPU:0*
dtype0	*
valueB	 R
ParseSingleExample/Const_3Const"/device:CPU:0*
valueB	 *
dtype0	
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0#ParseSingleExample/Const_2:output:0#ParseSingleExample/Const_3:output:0"/device:CPU:0*
Tdense
2				*

num_sparse *A

dense_keys3
1labelpacketLengthpacketPayloadrecordTypes*'
dense_shapes
: :@::@*
sparse_types
 *
sparse_keys
 "_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2"_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:3"ѓ ,cИЌ     Г	р}-M§жAJЋй
ЯL­L
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
ю
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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

ControlTrigger
ь
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype

IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0
C
IteratorToStringHandle
resource_handle
string_handle
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z



LogicalNot
x

y

!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
д
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
Џ
OneShotIterator

handle"
dataset_factoryfunc"
output_types
list(type)(0" 
output_shapeslist(shape)(0"
	containerstring "
shared_namestring 
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
Ѕ

ScatterAdd
ref"T
indices"Tindices
updates"T

output_ref"T" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
A

StackPopV2

handle
elem"	elem_type"
	elem_typetype
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( 
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring 
і
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

StridedSliceGrad
shape"Index
begin"Index
end"Index
strides"Index
dy"T
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestring
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
о
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
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
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
С
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype*1.12.02v1.12.0-0-ga6d8ffae09њ

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
В
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
m
ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0*
_output_shapes
: 
v
flat_filenames/shapeConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
V
countConst"/device:CPU:0*
value	B	 R*
dtype0	*
_output_shapes
: 
\

batch_sizeConst"/device:CPU:0*
value
B	 R'*
dtype0	*
_output_shapes
: 
_
drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
*
_output_shapes
: 

OneShotIteratorOneShotIterator"/device:CPU:0*0
dataset_factoryR
_make_dataset_soWvMtuA5sU*
shared_name *\
output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*
	container *
output_types
2				*
_output_shapes
: 
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 

IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*\
output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*
output_types
2				

CastCastIteratorGetNext:2"/device:CPU:0*
Truncate( *(
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
f
Reshape/shapeConst*
_output_shapes
:*%
valueB"џџџџ           *
dtype0
o
ReshapeReshapeCastReshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ  
Г
3layer_conv1/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv1/kernel*%
valueB"             *
dtype0*
_output_shapes
:

1layer_conv1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
valueB
 *О

1layer_conv1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *>*
dtype0*
_output_shapes
: 
џ
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0*%
_class
loc:@layer_conv1/kernel*
seed2 
ц
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*
_output_shapes
: 

1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
ђ
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
Н
layer_conv1/kernel
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel
ч
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/readIdentitylayer_conv1/kernel*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 

"layer_conv1/bias/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ё
layer_conv1/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
Ъ
layer_conv1/bias/AssignAssignlayer_conv1/bias"layer_conv1/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
}
layer_conv1/bias/readIdentitylayer_conv1/bias*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
j
layer_conv1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ц
layer_conv1/Conv2DConv2DReshapelayer_conv1/kernel/read*/
_output_shapes
:џџџџџџџџџ   *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

layer_conv1/BiasAddBiasAddlayer_conv1/Conv2Dlayer_conv1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ   
g
layer_conv1/ReluRelulayer_conv1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ   
П
max_pooling2d/MaxPoolMaxPoollayer_conv1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ 
Г
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

1layer_conv2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *ьбН*
dtype0*
_output_shapes
: 

1layer_conv2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *ьб=*
dtype0*
_output_shapes
: 
џ
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*

seed *
T0*%
_class
loc:@layer_conv2/kernel*
seed2 *
dtype0*&
_output_shapes
:  
ц
1layer_conv2/kernel/Initializer/random_uniform/subSub1layer_conv2/kernel/Initializer/random_uniform/max1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*
_output_shapes
: 

1layer_conv2/kernel/Initializer/random_uniform/mulMul;layer_conv2/kernel/Initializer/random_uniform/RandomUniform1layer_conv2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
ђ
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
Н
layer_conv2/kernel
VariableV2*%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name 
ч
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  

layer_conv2/kernel/readIdentitylayer_conv2/kernel*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  

"layer_conv2/bias/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ё
layer_conv2/bias
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias
Ъ
layer_conv2/bias/AssignAssignlayer_conv2/bias"layer_conv2/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
}
layer_conv2/bias/readIdentitylayer_conv2/bias*
T0*#
_class
loc:@layer_conv2/bias*
_output_shapes
: 
j
layer_conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
є
layer_conv2/Conv2DConv2Dmax_pooling2d/MaxPoollayer_conv2/kernel/read*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

layer_conv2/BiasAddBiasAddlayer_conv2/Conv2Dlayer_conv2/bias/read*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ *
T0
g
layer_conv2/ReluRelulayer_conv2/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
С
max_pooling2d_1/MaxPoolMaxPoollayer_conv2/Relu*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides
*
ksize

l
Flatten/flatten/ShapeShapemax_pooling2d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
m
#Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
j
Flatten/flatten/Reshape/shape/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

Flatten/flatten/ReshapeReshapemax_pooling2d_1/MaxPoolFlatten/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџ
Ї
1layer_fc1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@layer_fc1/kernel*
valueB"      

/layer_fc1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *AWН*
dtype0*
_output_shapes
: 

/layer_fc1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *AW=*
dtype0*
_output_shapes
: 
ѓ
9layer_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1layer_fc1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*#
_class
loc:@layer_fc1/kernel
о
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@layer_fc1/kernel
ђ
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
*
T0
ф
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

­
layer_fc1/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:

й
layer_fc1/kernel/AssignAssignlayer_fc1/kernel+layer_fc1/kernel/Initializer/random_uniform*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

layer_fc1/kernel/readIdentitylayer_fc1/kernel*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:


 layer_fc1/bias/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:

layer_fc1/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias
У
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(
x
layer_fc1/bias/readIdentitylayer_fc1/bias*
_output_shapes	
:*
T0*!
_class
loc:@layer_fc1/bias
Ѓ
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
`
Reshape_1/shapeConst*
valueB"џџџџ@   *
dtype0*
_output_shapes
:
v
	Reshape_1ReshapeIteratorGetNextReshape_1/shape*'
_output_shapes
:џџџџџџџџџ@*
T0	*
Tshape0
Ѕ
0word_embeddings/Initializer/random_uniform/shapeConst*"
_class
loc:@word_embeddings*
valueB"      *
dtype0*
_output_shapes
:

.word_embeddings/Initializer/random_uniform/minConst*"
_class
loc:@word_embeddings*
valueB
 *ЕО*
dtype0*
_output_shapes
: 

.word_embeddings/Initializer/random_uniform/maxConst*
_output_shapes
: *"
_class
loc:@word_embeddings*
valueB
 *Е>*
dtype0
я
8word_embeddings/Initializer/random_uniform/RandomUniformRandomUniform0word_embeddings/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@word_embeddings*
seed2 *
dtype0*
_output_shapes
:	 
к
.word_embeddings/Initializer/random_uniform/subSub.word_embeddings/Initializer/random_uniform/max.word_embeddings/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@word_embeddings
э
.word_embeddings/Initializer/random_uniform/mulMul8word_embeddings/Initializer/random_uniform/RandomUniform.word_embeddings/Initializer/random_uniform/sub*
_output_shapes
:	 *
T0*"
_class
loc:@word_embeddings
п
*word_embeddings/Initializer/random_uniformAdd.word_embeddings/Initializer/random_uniform/mul.word_embeddings/Initializer/random_uniform/min*
_output_shapes
:	 *
T0*"
_class
loc:@word_embeddings
Љ
word_embeddings
VariableV2*
_output_shapes
:	 *
shared_name *"
_class
loc:@word_embeddings*
	container *
shape:	 *
dtype0
д
word_embeddings/AssignAssignword_embeddings*word_embeddings/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 

word_embeddings/readIdentityword_embeddings*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
{
embedding_lookup/axisConst*"
_class
loc:@word_embeddings*
value	B : *
dtype0*
_output_shapes
: 
б
embedding_lookupGatherV2word_embeddings/read	Reshape_1embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*"
_class
loc:@word_embeddings*+
_output_shapes
:џџџџџџџџџ@ 
m
embedding_lookup/IdentityIdentityembedding_lookup*
T0*+
_output_shapes
:џџџџџџџџџ@ 
J
rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Q
rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
Q
rnn/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
f
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*
_output_shapes
:*

Tidx0
d
rnn/concat/values_0Const*
_output_shapes
:*
valueB"       *
dtype0
Q
rnn/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0


rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:

rnn/transpose	Transposeembedding_lookup/Identity
rnn/concat*
Tperm0*
T0*+
_output_shapes
:@џџџџџџџџџ 
V
	rnn/ShapeShapernn/transpose*
T0*
out_type0*
_output_shapes
:
a
rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
j
(rnn/BasicRNNCellZeroState/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
 
$rnn/BasicRNNCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice(rnn/BasicRNNCellZeroState/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
i
rnn/BasicRNNCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
g
%rnn/BasicRNNCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
 rnn/BasicRNNCellZeroState/concatConcatV2$rnn/BasicRNNCellZeroState/ExpandDimsrnn/BasicRNNCellZeroState/Const%rnn/BasicRNNCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
j
%rnn/BasicRNNCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
rnn/BasicRNNCellZeroState/zerosFill rnn/BasicRNNCellZeroState/concat%rnn/BasicRNNCellZeroState/zeros/Const*'
_output_shapes
:џџџџџџџџџ@*
T0*

index_type0
l
*rnn/BasicRNNCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Є
&rnn/BasicRNNCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_slice*rnn/BasicRNNCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
k
!rnn/BasicRNNCellZeroState/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
X
rnn/Shape_1Shapernn/transpose*
T0*
out_type0*
_output_shapes
:
c
rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
e
rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
X
rnn/Shape_2Shapernn/transpose*
T0*
out_type0*
_output_shapes
:
c
rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
T
rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
v
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
S
	rnn/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
S
rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

rnn/concat_1ConcatV2rnn/ExpandDims	rnn/Constrnn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
T
rnn/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
t
	rnn/zerosFillrnn/concat_1rnn/zeros/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ@
J
rnn/timeConst*
_output_shapes
: *
value	B : *
dtype0

rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:џџџџџџџџџ@*
dynamic_size( *
clear_after_read(*
identical_element_shapes(

rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*
_output_shapes

:: *$
element_shape:џџџџџџџџџ *
dynamic_size( *
clear_after_read(*
identical_element_shapes(*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0
i
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
T0*
out_type0*
_output_shapes
:
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ь
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/startConst*
_output_shapes
: *
value	B : *
dtype0
d
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ф
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:џџџџџџџџџ*

Tidx0
ю
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose*
_output_shapes
: 
O
rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
[
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
_output_shapes
: *
T0
Y
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
_output_shapes
: *
T0
]
rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
­
rnn/while/EnterEnterrnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context

rnn/while/Enter_1Enterrnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
Ѕ
rnn/while/Enter_2Enterrnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
Ф
rnn/while/Enter_3Enterrnn/BasicRNNCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:џџџџџџџџџ@*'

frame_namernn/while/while_context
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
_output_shapes
: : *
T0*
N
t
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 

rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
N*)
_output_shapes
:џџџџџџџџџ@: *
T0
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
_output_shapes
: *
T0
Њ
rnn/while/Less/EnterEnterrnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
d
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
Є
rnn/while/Less_1/EnterEnterrnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
\
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1*
_output_shapes
: 
L
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd*
_output_shapes
: 

rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
_output_shapes
: : *
T0*"
_class
loc:@rnn/while/Merge

rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
_output_shapes
: : *
T0*$
_class
loc:@rnn/while/Merge_1

rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*
_output_shapes
: : *
T0*$
_class
loc:@rnn/while/Merge_2
Ў
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_3*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
T0*
_output_shapes
: 
h
rnn/while/Identity_3Identityrnn/while/Switch_3:1*'
_output_shapes
:џџџџџџџџџ@*
T0
f
rnn/while/add/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
T0*
_output_shapes
: 
Ф
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*'
_output_shapes
:џџџџџџџџџ *
dtype0
Й
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
_output_shapes
:*'

frame_namernn/while/while_context*
T0*
is_constant(*
parallel_iterations 
ф
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
Й
:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   *
dtype0*
_output_shapes
:
Ћ
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *јKFО*
dtype0*
_output_shapes
: 
Ћ
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *јKF>*
dtype0*
_output_shapes
: 

Brnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniform:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shape*

seed *
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
seed2 *
dtype0*
_output_shapes

:`@

8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/subSub8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/max8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel

8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mulMulBrnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniform8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes

:`@

4rnn/basic_rnn_cell/kernel/Initializer/random_uniformAdd8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mul8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes

:`@
Л
rnn/basic_rnn_cell/kernel
VariableV2*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
	container *
shape
:`@*
dtype0*
_output_shapes

:`@*
shared_name 
ћ
 rnn/basic_rnn_cell/kernel/AssignAssignrnn/basic_rnn_cell/kernel4rnn/basic_rnn_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
n
rnn/basic_rnn_cell/kernel/readIdentityrnn/basic_rnn_cell/kernel*
T0*
_output_shapes

:`@
Ђ
)rnn/basic_rnn_cell/bias/Initializer/zerosConst**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Џ
rnn/basic_rnn_cell/bias
VariableV2*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
ц
rnn/basic_rnn_cell/bias/AssignAssignrnn/basic_rnn_cell/bias)rnn/basic_rnn_cell/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@
f
rnn/basic_rnn_cell/bias/readIdentityrnn/basic_rnn_cell/bias*
T0*
_output_shapes
:@
{
$rnn/while/basic_rnn_cell/concat/axisConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ы
rnn/while/basic_rnn_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3$rnn/while/basic_rnn_cell/concat/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ`*

Tidx0
Щ
rnn/while/basic_rnn_cell/MatMulMatMulrnn/while/basic_rnn_cell/concat%rnn/while/basic_rnn_cell/MatMul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( *
transpose_b( 
Ю
%rnn/while/basic_rnn_cell/MatMul/EnterEnterrnn/basic_rnn_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:`@*'

frame_namernn/while/while_context
Н
 rnn/while/basic_rnn_cell/BiasAddBiasAddrnn/while/basic_rnn_cell/MatMul&rnn/while/basic_rnn_cell/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ@
Щ
&rnn/while/basic_rnn_cell/BiasAdd/EnterEnterrnn/basic_rnn_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:@*'

frame_namernn/while/while_context
y
rnn/while/basic_rnn_cell/TanhTanh rnn/while/basic_rnn_cell/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ@

-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity_1rnn/while/basic_rnn_cell/Tanhrnn/while/Identity_2*
_output_shapes
: *
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh
ћ
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
is_constant(*
_output_shapes
:*'

frame_namernn/while/while_context*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
parallel_iterations 
h
rnn/while/add_1/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
`
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
_output_shapes
: *
T0
X
rnn/while/NextIterationNextIterationrnn/while/add*
T0*
_output_shapes
: 
\
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
T0*
_output_shapes
: 
z
rnn/while/NextIteration_2NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
{
rnn/while/NextIteration_3NextIterationrnn/while/basic_rnn_cell/Tanh*'
_output_shapes
:џџџџџџџџџ@*
T0
I
rnn/while/ExitExitrnn/while/Switch*
T0*
_output_shapes
: 
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
_output_shapes
: *
T0
M
rnn/while/Exit_2Exitrnn/while/Switch_2*
T0*
_output_shapes
: 
^
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0*'
_output_shapes
:џџџџџџџџџ@

&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
_output_shapes
: 

 rnn/TensorArrayStack/range/startConst*"
_class
loc:@rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 

 rnn/TensorArrayStack/range/deltaConst*"
_class
loc:@rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
ф
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*"
_class
loc:@rnn/TensorArray*#
_output_shapes
:џџџџџџџџџ*

Tidx0

(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_2*+
_output_shapes
:@џџџџџџџџџ@*$
element_shape:џџџџџџџџџ@*"
_class
loc:@rnn/TensorArray*
dtype0
U
rnn/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
L

rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :
n
rnn/range_1Rangernn/range_1/start
rnn/Rank_1rnn/range_1/delta*
_output_shapes
:*

Tidx0
f
rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
S
rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

rnn/concat_2ConcatV2rnn/concat_2/values_0rnn/range_1rnn/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0

rnn/transpose_1	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_2*
T0*+
_output_shapes
:џџџџџџџџџ@@*
Tperm0
h
strided_slice/stackConst*!
valueB"    џџџџ    *
dtype0*
_output_shapes
:
j
strided_slice/stack_1Const*!
valueB"            *
dtype0*
_output_shapes
:
j
strided_slice/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

strided_sliceStridedSlicernn/transpose_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:џџџџџџџџџ@
Б
6layer_rnn_fc_1/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Ѓ
4layer_rnn_fc_1/kernel/Initializer/random_uniform/minConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *ѓ5О*
dtype0*
_output_shapes
: 
Ѓ
4layer_rnn_fc_1/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *ѓ5>*
dtype0*
_output_shapes
: 

>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6layer_rnn_fc_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	@*

seed *
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
seed2 
ђ
4layer_rnn_fc_1/kernel/Initializer/random_uniform/subSub4layer_rnn_fc_1/kernel/Initializer/random_uniform/max4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
: 

4layer_rnn_fc_1/kernel/Initializer/random_uniform/mulMul>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniform4layer_rnn_fc_1/kernel/Initializer/random_uniform/sub*
_output_shapes
:	@*
T0*(
_class
loc:@layer_rnn_fc_1/kernel
ї
0layer_rnn_fc_1/kernel/Initializer/random_uniformAdd4layer_rnn_fc_1/kernel/Initializer/random_uniform/mul4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
_output_shapes
:	@*
T0*(
_class
loc:@layer_rnn_fc_1/kernel
Е
layer_rnn_fc_1/kernel
VariableV2*
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name *(
_class
loc:@layer_rnn_fc_1/kernel*
	container 
ь
layer_rnn_fc_1/kernel/AssignAssignlayer_rnn_fc_1/kernel0layer_rnn_fc_1/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@

layer_rnn_fc_1/kernel/readIdentitylayer_rnn_fc_1/kernel*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@

%layer_rnn_fc_1/bias/Initializer/zerosConst*&
_class
loc:@layer_rnn_fc_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Љ
layer_rnn_fc_1/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:
з
layer_rnn_fc_1/bias/AssignAssignlayer_rnn_fc_1/bias%layer_rnn_fc_1/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(

layer_rnn_fc_1/bias/readIdentitylayer_rnn_fc_1/bias*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
_output_shapes	
:
Ѓ
layer_rnn_fc_1/MatMulMatMulstrided_slicelayer_rnn_fc_1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

layer_rnn_fc_1/BiasAddBiasAddlayer_rnn_fc_1/MatMullayer_rnn_fc_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
f
layer_rnn_fc_1/ReluRelulayer_rnn_fc_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B :

concatConcatV2layer_fc1/Relulayer_rnn_fc_1/Reluconcat/axis*
N*(
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
Й
:layer_combine_fc_x/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"      *
dtype0
Ћ
8layer_combine_fc_x/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *   О*
dtype0*
_output_shapes
: 
Ћ
8layer_combine_fc_x/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *   >*
dtype0

Blayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_x/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
seed2 

8layer_combine_fc_x/kernel/Initializer/random_uniform/subSub8layer_combine_fc_x/kernel/Initializer/random_uniform/max8layer_combine_fc_x/kernel/Initializer/random_uniform/min*,
_class"
 loc:@layer_combine_fc_x/kernel*
_output_shapes
: *
T0

8layer_combine_fc_x/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_x/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:


4layer_combine_fc_x/kernel/Initializer/random_uniformAdd8layer_combine_fc_x/kernel/Initializer/random_uniform/mul8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:

П
layer_combine_fc_x/kernel
VariableV2* 
_output_shapes
:
*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
*
dtype0
§
 layer_combine_fc_x/kernel/AssignAssignlayer_combine_fc_x/kernel4layer_combine_fc_x/kernel/Initializer/random_uniform*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

layer_combine_fc_x/kernel/readIdentitylayer_combine_fc_x/kernel*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:

Є
)layer_combine_fc_x/bias/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB*    *
dtype0*
_output_shapes	
:
Б
layer_combine_fc_x/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name **
_class 
loc:@layer_combine_fc_x/bias
ч
layer_combine_fc_x/bias/AssignAssignlayer_combine_fc_x/bias)layer_combine_fc_x/bias/Initializer/zeros*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

layer_combine_fc_x/bias/readIdentitylayer_combine_fc_x/bias**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:*
T0
Є
layer_combine_fc_x/MatMulMatMulconcatlayer_combine_fc_x/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0
Ј
layer_combine_fc_x/BiasAddBiasAddlayer_combine_fc_x/MatMullayer_combine_fc_x/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
n
layer_combine_fc_x/ReluRelulayer_combine_fc_x/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Й
:layer_combine_fc_y/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ћ
8layer_combine_fc_y/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}RО*
dtype0*
_output_shapes
: 
Ћ
8layer_combine_fc_y/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R>*
dtype0*
_output_shapes
: 

Blayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_y/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
seed2 

8layer_combine_fc_y/kernel/Initializer/random_uniform/subSub8layer_combine_fc_y/kernel/Initializer/random_uniform/max8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel

8layer_combine_fc_y/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_y/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	

4layer_combine_fc_y/kernel/Initializer/random_uniformAdd8layer_combine_fc_y/kernel/Initializer/random_uniform/mul8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	
Н
layer_combine_fc_y/kernel
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	
ќ
 layer_combine_fc_y/kernel/AssignAssignlayer_combine_fc_y/kernel4layer_combine_fc_y/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	

layer_combine_fc_y/kernel/readIdentitylayer_combine_fc_y/kernel*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	
Ђ
)layer_combine_fc_y/bias/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
Џ
layer_combine_fc_y/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias
ц
layer_combine_fc_y/bias/AssignAssignlayer_combine_fc_y/bias)layer_combine_fc_y/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:

layer_combine_fc_y/bias/readIdentitylayer_combine_fc_y/bias*
T0**
_class 
loc:@layer_combine_fc_y/bias*
_output_shapes
:
Д
layer_combine_fc_y/MatMulMatMullayer_combine_fc_x/Relulayer_combine_fc_y/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0
Ї
layer_combine_fc_y/BiasAddBiasAddlayer_combine_fc_y/MatMullayer_combine_fc_y/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
`
SoftmaxSoftmaxlayer_combine_fc_y/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:3*
out_type0*
_output_shapes
:*
T0	
э
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_combine_fc_y/BiasAddIteratorGetNext:3*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ*
Tlabels0	*
T0
Q
Const_1Const*
_output_shapes
:*
valueB: *
dtype0

MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
S
gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
Ї
gradients/f_count_1Entergradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
r
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
T0*
N*
_output_shapes
: : 
b
gradients/SwitchSwitchgradients/Mergernn/while/LoopCond*
T0*
_output_shapes
: : 
f
gradients/Add/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0*
_output_shapes
: 
Щ
gradients/NextIterationNextIterationgradients/Add[^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2D^gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPushV2B^gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPushV2B^gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2D^gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2_1*
_output_shapes
: *
T0
N
gradients/f_count_2Exitgradients/Switch*
T0*
_output_shapes
: 
S
gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
Г
gradients/b_count_1Entergradients/f_count_2*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context*
T0
v
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
N*
_output_shapes
: : *
T0
x
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
К
gradients/GreaterEqual/EnterEntergradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context
O
gradients/b_count_2LoopCondgradients/GreaterEqual*
_output_shapes
: 
g
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
_output_shapes
: : *
T0
i
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
В
gradients/NextIteration_1NextIterationgradients/SubV^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
P
gradients/b_count_3Exitgradients/Switch_1*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
 
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0
Ђ
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:џџџџџџџџџ*
T0
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:џџџџџџџџџ*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
А
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Б
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
о
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ
м
5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
з
:gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul6^gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad

Bgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:џџџџџџџџџ
Г
Dgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad
і
/gradients/layer_combine_fc_y/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_y/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(*
T0
ш
1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1MatMullayer_combine_fc_x/ReluBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	*
transpose_a(*
transpose_b( 
Ї
9gradients/layer_combine_fc_y/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_y/MatMul_grad/MatMul2^gradients/layer_combine_fc_y/MatMul_grad/MatMul_1
Б
Agradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_y/MatMul_grad/MatMul:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Ў
Cgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul_1*
_output_shapes
:	
Ъ
/gradients/layer_combine_fc_x/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencylayer_combine_fc_x/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
В
5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/layer_combine_fc_x/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0
Ќ
:gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_depsNoOp6^gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad0^gradients/layer_combine_fc_x/Relu_grad/ReluGrad
Г
Bgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/Relu_grad/ReluGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ
Д
Dgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
і
/gradients/layer_combine_fc_x/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_x/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(*
T0
и
1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1MatMulconcatBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(
Ї
9gradients/layer_combine_fc_x/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_x/MatMul_grad/MatMul2^gradients/layer_combine_fc_x/MatMul_grad/MatMul_1
Б
Agradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/MatMul_grad/MatMul:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Џ
Cgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul_1* 
_output_shapes
:

\
gradients/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
o
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
_output_shapes
: *
T0
i
gradients/concat_grad/ShapeShapelayer_fc1/Relu*
T0*
out_type0*
_output_shapes
:

gradients/concat_grad/ShapeNShapeNlayer_fc1/Relulayer_rnn_fc_1/Relu*
T0*
out_type0*
N* 
_output_shapes
::
Ж
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1*
N* 
_output_shapes
::
щ
gradients/concat_grad/SliceSliceAgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*(
_output_shapes
:џџџџџџџџџ*
Index0*
T0
я
gradients/concat_grad/Slice_1SliceAgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ
l
&gradients/concat_grad/tuple/group_depsNoOp^gradients/concat_grad/Slice^gradients/concat_grad/Slice_1
у
.gradients/concat_grad/tuple/control_dependencyIdentitygradients/concat_grad/Slice'^gradients/concat_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/concat_grad/Slice*(
_output_shapes
:џџџџџџџџџ
щ
0gradients/concat_grad/tuple/control_dependency_1Identitygradients/concat_grad/Slice_1'^gradients/concat_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_grad/Slice_1*(
_output_shapes
:џџџџџџџџџ
Ѕ
&gradients/layer_fc1/Relu_grad/ReluGradReluGrad.gradients/concat_grad/tuple/control_dependencylayer_fc1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Б
+gradients/layer_rnn_fc_1/Relu_grad/ReluGradReluGrad0gradients/concat_grad/tuple/control_dependency_1layer_rnn_fc_1/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
 
,gradients/layer_fc1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/layer_fc1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

1gradients/layer_fc1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/layer_fc1/BiasAdd_grad/BiasAddGrad'^gradients/layer_fc1/Relu_grad/ReluGrad

9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad

;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Њ
1gradients/layer_rnn_fc_1/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/layer_rnn_fc_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
 
6gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/group_depsNoOp2^gradients/layer_rnn_fc_1/BiasAdd_grad/BiasAddGrad,^gradients/layer_rnn_fc_1/Relu_grad/ReluGrad
Ѓ
>gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/layer_rnn_fc_1/Relu_grad/ReluGrad7^gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*>
_class4
20loc:@gradients/layer_rnn_fc_1/Relu_grad/ReluGrad
Є
@gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/layer_rnn_fc_1/BiasAdd_grad/BiasAddGrad7^gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_rnn_fc_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
л
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
з
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 

0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1

8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ

:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1* 
_output_shapes
:

щ
+gradients/layer_rnn_fc_1/MatMul_grad/MatMulMatMul>gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependencylayer_rnn_fc_1/kernel/read*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( *
transpose_b(*
T0
ж
-gradients/layer_rnn_fc_1/MatMul_grad/MatMul_1MatMulstrided_slice>gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	@*
transpose_a(

5gradients/layer_rnn_fc_1/MatMul_grad/tuple/group_depsNoOp,^gradients/layer_rnn_fc_1/MatMul_grad/MatMul.^gradients/layer_rnn_fc_1/MatMul_grad/MatMul_1
 
=gradients/layer_rnn_fc_1/MatMul_grad/tuple/control_dependencyIdentity+gradients/layer_rnn_fc_1/MatMul_grad/MatMul6^gradients/layer_rnn_fc_1/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/layer_rnn_fc_1/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ@

?gradients/layer_rnn_fc_1/MatMul_grad/tuple/control_dependency_1Identity-gradients/layer_rnn_fc_1/MatMul_grad/MatMul_16^gradients/layer_rnn_fc_1/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/layer_rnn_fc_1/MatMul_grad/MatMul_1*
_output_shapes
:	@

,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling2d_1/MaxPool*
out_type0*
_output_shapes
:*
T0
щ
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ 
q
"gradients/strided_slice_grad/ShapeShapernn/transpose_1*
T0*
out_type0*
_output_shapes
:

-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad"gradients/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2=gradients/layer_rnn_fc_1/MatMul_grad/tuple/control_dependency*
new_axis_mask *
end_mask*+
_output_shapes
:џџџџџџџџџ@@*
Index0*
T0*
shrink_axis_mask*

begin_mask*
ellipsis_mask 
Љ
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv2/Relumax_pooling2d_1/MaxPool.gradients/Flatten/flatten/Reshape_grad/Reshape*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides

x
0gradients/rnn/transpose_1_grad/InvertPermutationInvertPermutationrnn/concat_2*
T0*
_output_shapes
:
й
(gradients/rnn/transpose_1_grad/transpose	Transpose-gradients/strided_slice_grad/StridedSliceGrad0gradients/rnn/transpose_1_grad/InvertPermutation*
Tperm0*
T0*+
_output_shapes
:@џџџџџџџџџ@
Д
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradlayer_conv2/Relu*
T0*/
_output_shapes
:џџџџџџџџџ 
ъ
Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
source	gradients*
_output_shapes

:: 

Ugradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentityrnn/while/Exit_2Z^gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*"
_class
loc:@rnn/TensorArray*
_output_shapes
: *
T0

_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3rnn/TensorArrayStack/range(gradients/rnn/transpose_1_grad/transposeUgradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
g
gradients/zeros_like_1	ZerosLikernn/while/Exit_3*
T0*'
_output_shapes
:џџџџџџџџџ@
Ѓ
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
: *
T0

3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad

;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ 

=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 

&gradients/rnn/while/Exit_2_grad/b_exitEnter_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context
к
&gradients/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:џџџџџџџџџ@*1

frame_name#!gradients/rnn/while/while_context
І
(gradients/layer_conv2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoollayer_conv2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
є
5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv2/Conv2D_grad/ShapeNlayer_conv2/kernel/read;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ 
э
6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool*gradients/layer_conv2/Conv2D_grad/ShapeN:1;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:  *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Ћ
2gradients/layer_conv2/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput
Ж
:gradients/layer_conv2/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*/
_output_shapes
:џџџџџџџџџ *
T0*H
_class>
<:loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput
Б
<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:  
К
*gradients/rnn/while/Switch_2_grad/b_switchMerge&gradients/rnn/while/Exit_2_grad/b_exit1gradients/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
Ы
*gradients/rnn/while/Switch_3_grad/b_switchMerge&gradients/rnn/while/Exit_3_grad/b_exit1gradients/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 
Б
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv1/Relumax_pooling2d/MaxPool:gradients/layer_conv2/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ   
д
'gradients/rnn/while/Merge_2_grad/SwitchSwitch*gradients/rnn/while/Switch_2_grad/b_switchgradients/b_count_2*
_output_shapes
: : *
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch
c
1gradients/rnn/while/Merge_2_grad/tuple/group_depsNoOp(^gradients/rnn/while/Merge_2_grad/Switch

9gradients/rnn/while/Merge_2_grad/tuple/control_dependencyIdentity'gradients/rnn/while/Merge_2_grad/Switch2^gradients/rnn/while/Merge_2_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch

;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1Identity)gradients/rnn/while/Merge_2_grad/Switch:12^gradients/rnn/while/Merge_2_grad/tuple/group_deps*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: *
T0
і
'gradients/rnn/while/Merge_3_grad/SwitchSwitch*gradients/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
c
1gradients/rnn/while/Merge_3_grad/tuple/group_depsNoOp(^gradients/rnn/while/Merge_3_grad/Switch

9gradients/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity'gradients/rnn/while/Merge_3_grad/Switch2^gradients/rnn/while/Merge_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*'
_output_shapes
:џџџџџџџџџ@

;gradients/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity)gradients/rnn/while/Merge_3_grad/Switch:12^gradients/rnn/while/Merge_3_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ@*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch
В
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradlayer_conv1/Relu*
T0*/
_output_shapes
:џџџџџџџџџ   

%gradients/rnn/while/Enter_2_grad/ExitExit9gradients/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 

%gradients/rnn/while/Enter_3_grad/ExitExit9gradients/rnn/while/Merge_3_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ@*
T0
Ѓ
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad

;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ   

=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
§
^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
source	gradients*
_output_shapes

:: 
Ж
dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterrnn/TensorArray*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
parallel_iterations *
is_constant(*
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context*
T0
з
Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1_^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
_output_shapes
: 
А
Ngradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*'
_output_shapes
:џџџџџџџџџ@
Ш
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*'
_class
loc:@rnn/while/Identity_1*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*'
_class
loc:@rnn/while/Identity_1*

stack_name *
_output_shapes
:*
	elem_type0
Џ
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context*
T0

Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterrnn/while/Identity_1^gradients/Add*
T0*
_output_shapes
: *
swap_memory( 

Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
: 
Ф
_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
г
Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2C^gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2A^gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2A^gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2C^gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1
ф
Mgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOp<^gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1O^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3

Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityNgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3N^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*a
_classW
USloc:@gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*'
_output_shapes
:џџџџџџџџџ@*
T0
а
Wgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1Identity;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1N^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 

(gradients/layer_conv1/Conv2D_grad/ShapeNShapeNReshapelayer_conv1/kernel/read* 
_output_shapes
::*
T0*
out_type0*
N
є
5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv1/Conv2D_grad/ShapeNlayer_conv1/kernel/read;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ  *
	dilations
*
T0
п
6gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshape*gradients/layer_conv1/Conv2D_grad/ShapeN:1;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ћ
2gradients/layer_conv1/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput
Ж
:gradients/layer_conv1/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:џџџџџџџџџ  
Б
<gradients/layer_conv1/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*I
_class?
=;loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: *
T0
Є
gradients/AddNAddN;gradients/rnn/while/Merge_3_grad/tuple/control_dependency_1Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*
N*'
_output_shapes
:џџџџџџџџџ@
Х
5gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGradTanhGrad@gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2gradients/AddN*
T0*'
_output_shapes
:џџџџџџџџџ@
И
;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/ConstConst*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
є
;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/f_accStackV2;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/Const*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
§
;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/EnterEnter;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context

Agradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPushV2StackPushV2;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/Enterrnn/while/basic_rnn_cell/Tanh^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@*
swap_memory( 
р
@gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2
StackPopV2Fgradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ@

Fgradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPopV2/EnterEnter;gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context
Н
;gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad5gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes
:@*
T0
О
@gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp<^gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/BiasAddGrad6^gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad
Ъ
Hgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity5gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGradA^gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad*'
_output_shapes
:џџџџџџџџџ@
Ы
Jgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Identity;gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/BiasAddGradA^gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/rnn/while/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
М
1gradients/rnn/while/Switch_2_grad_1/NextIterationNextIterationWgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 

5gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMulMatMulHgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency;gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul/Enter*
transpose_b(*
T0*'
_output_shapes
:џџџџџџџџџ`*
transpose_a( 
ю
;gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul/EnterEnterrnn/basic_rnn_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:`@*1

frame_name#!gradients/rnn/while/while_context

7gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1MatMulBgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2Hgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:`@*
transpose_a(*
transpose_b( 
М
=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/ConstConst*2
_class(
&$loc:@rnn/while/basic_rnn_cell/concat*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
њ
=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/f_accStackV2=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/Const*2
_class(
&$loc:@rnn/while/basic_rnn_cell/concat*

stack_name *
_output_shapes
:*
	elem_type0

=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/EnterEnter=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context

Cgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/Enterrnn/while/basic_rnn_cell/concat^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ`*
swap_memory( 
ф
Bgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2Hgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ`*
	elem_type0

Hgradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter=gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context
Й
?gradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOp6^gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul8^gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1
Ш
Ggradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity5gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul@^gradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ`
Х
Igradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Identity7gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1@^gradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/group_deps*J
_class@
><loc:@gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1*
_output_shapes

:`@*
T0

;gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_accConst*
valueB@*    *
dtype0*
_output_shapes
:@

=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_1Enter;gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:@*1

frame_name#!gradients/rnn/while/while_context
њ
=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_2Merge=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_1Cgradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes

:@: 
Х
<gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/SwitchSwitch=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2* 
_output_shapes
:@:@*
T0
ё
9gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/AddAdd>gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/Switch:1Jgradients/rnn/while/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
:@
Д
Cgradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/NextIterationNextIteration9gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/Add*
_output_shapes
:@*
T0
Ј
=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_3Exit<gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/Switch*
_output_shapes
:@*
T0

4gradients/rnn/while/basic_rnn_cell/concat_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 

3gradients/rnn/while/basic_rnn_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Ъ
2gradients/rnn/while/basic_rnn_cell/concat_grad/modFloorMod4gradients/rnn/while/basic_rnn_cell/concat_grad/Const3gradients/rnn/while/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0

4gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeShapernn/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:

5gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeNShapeN@gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2Bgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N* 
_output_shapes
::
Ж
;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/ConstConst*.
_class$
" loc:@rnn/while/TensorArrayReadV3*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ђ
;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_accStackV2;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Const*.
_class$
" loc:@rnn/while/TensorArrayReadV3*

stack_name *
_output_shapes
:*
	elem_type0
§
;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/EnterEnter;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context*
T0*
is_constant(
џ
Agradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2StackPushV2;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enterrnn/while/TensorArrayReadV3^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ *
swap_memory( 
р
@gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2
StackPopV2Fgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ *
	elem_type0

Fgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2/EnterEnter;gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context
Б
=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Const_1Const*'
_class
loc:@rnn/while/Identity_3*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
я
=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc_1StackV2=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Const_1*'
_class
loc:@rnn/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0

=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enter_1Enter=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context
ќ
Cgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enter_1rnn/while/Identity_3^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@*
swap_memory( 
ф
Bgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2Hgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ@*
	elem_type0

Hgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPopV2_1/EnterEnter=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context*
T0

;gradients/rnn/while/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset2gradients/rnn/while/basic_rnn_cell/concat_grad/mod5gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN7gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
Й
4gradients/rnn/while/basic_rnn_cell/concat_grad/SliceSliceGgradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependency;gradients/rnn/while/basic_rnn_cell/concat_grad/ConcatOffset5gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN*'
_output_shapes
:џџџџџџџџџ *
Index0*
T0
П
6gradients/rnn/while/basic_rnn_cell/concat_grad/Slice_1SliceGgradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependency=gradients/rnn/while/basic_rnn_cell/concat_grad/ConcatOffset:17gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@
З
?gradients/rnn/while/basic_rnn_cell/concat_grad/tuple/group_depsNoOp5^gradients/rnn/while/basic_rnn_cell/concat_grad/Slice7^gradients/rnn/while/basic_rnn_cell/concat_grad/Slice_1
Ц
Ggradients/rnn/while/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity4gradients/rnn/while/basic_rnn_cell/concat_grad/Slice@^gradients/rnn/while/basic_rnn_cell/concat_grad/tuple/group_deps*G
_class=
;9loc:@gradients/rnn/while/basic_rnn_cell/concat_grad/Slice*'
_output_shapes
:џџџџџџџџџ *
T0
Ь
Igradients/rnn/while/basic_rnn_cell/concat_grad/tuple/control_dependency_1Identity6gradients/rnn/while/basic_rnn_cell/concat_grad/Slice_1@^gradients/rnn/while/basic_rnn_cell/concat_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ@*
T0*I
_class?
=;loc:@gradients/rnn/while/basic_rnn_cell/concat_grad/Slice_1

:gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_accConst*
valueB`@*    *
dtype0*
_output_shapes

:`@

<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_1Enter:gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc*
_output_shapes

:`@*1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant( *
parallel_iterations 
ћ
<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_2Merge<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_1Bgradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
:`@: 
Ы
;gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/SwitchSwitch<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:`@:`@
ђ
8gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/AddAdd=gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/Switch:1Igradients/rnn/while/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:`@*
T0
Ж
Bgradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/NextIterationNextIteration8gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/Add*
T0*
_output_shapes

:`@
Њ
<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_3Exit;gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/Switch*
_output_shapes

:`@*
T0

Lgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Rgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterTgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
source	gradients*
_output_shapes

:: 
Њ
Rgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterrnn/TensorArray_1*
is_constant(*
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context*
T0*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
е
Tgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context*
T0*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
а
Hgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityTgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1M^gradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
С
Ngradients/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Lgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Ggradients/rnn/while/basic_rnn_cell/concat_grad/tuple/control_dependencyHgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
}
8gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter8gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!gradients/rnn/while/while_context
э
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
З
9gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0*
_output_shapes
: : 
ы
6gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAdd;gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Ngradients/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Њ
@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration6gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 

:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit9gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
П
1gradients/rnn/while/Switch_3_grad_1/NextIterationNextIterationIgradients/rnn/while/basic_rnn_cell/concat_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ@*
T0
Ў
ogradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3rnn/TensorArray_1:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes

:: *$
_class
loc:@rnn/TensorArray_1*
source	gradients
ь
kgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3p^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*$
_class
loc:@rnn/TensorArray_1
Ю
agradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3ogradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3rnn/TensorArrayUnstack/rangekgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*
dtype0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 

^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpb^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3;^gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
т
fgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityagradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3_^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*t
_classj
hfloc:@gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*+
_output_shapes
:@џџџџџџџџџ 

hgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3_^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
t
.gradients/rnn/transpose_grad/InvertPermutationInvertPermutation
rnn/concat*
_output_shapes
:*
T0

&gradients/rnn/transpose_grad/transpose	Transposefgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency.gradients/rnn/transpose_grad/InvertPermutation*+
_output_shapes
:џџџџџџџџџ@ *
Tperm0*
T0
Ђ
%gradients/embedding_lookup_grad/ShapeConst*"
_class
loc:@word_embeddings*%
valueB	"              *
dtype0	*
_output_shapes
:
О
'gradients/embedding_lookup_grad/ToInt32Cast%gradients/embedding_lookup_grad/Shape*

SrcT0	*"
_class
loc:@word_embeddings*
Truncate( *
_output_shapes
:*

DstT0
h
$gradients/embedding_lookup_grad/SizeSize	Reshape_1*
T0	*
out_type0*
_output_shapes
: 
p
.gradients/embedding_lookup_grad/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
П
*gradients/embedding_lookup_grad/ExpandDims
ExpandDims$gradients/embedding_lookup_grad/Size.gradients/embedding_lookup_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
}
3gradients/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

5gradients/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

5gradients/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-gradients/embedding_lookup_grad/strided_sliceStridedSlice'gradients/embedding_lookup_grad/ToInt323gradients/embedding_lookup_grad/strided_slice/stack5gradients/embedding_lookup_grad/strided_slice/stack_15gradients/embedding_lookup_grad/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
m
+gradients/embedding_lookup_grad/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
є
&gradients/embedding_lookup_grad/concatConcatV2*gradients/embedding_lookup_grad/ExpandDims-gradients/embedding_lookup_grad/strided_slice+gradients/embedding_lookup_grad/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Т
'gradients/embedding_lookup_grad/ReshapeReshape&gradients/rnn/transpose_grad/transpose&gradients/embedding_lookup_grad/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ 
Ї
)gradients/embedding_lookup_grad/Reshape_1Reshape	Reshape_1*gradients/embedding_lookup_grad/ExpandDims*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

beta1_power/initial_valueConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape: 
К
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes
: *
use_locking(
v
beta1_power/readIdentitybeta1_power**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes
: *
T0

beta2_power/initial_valueConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB
 *wО?*
dtype0*
_output_shapes
: 

beta2_power
VariableV2**
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
К
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes
: 
v
beta2_power/readIdentitybeta2_power**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes
: *
T0
Е
)layer_conv1/kernel/Adam/Initializer/zerosConst*
dtype0*&
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*%
valueB *    
Т
layer_conv1/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: 
э
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0

layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
З
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
Ф
layer_conv1/kernel/Adam_1
VariableV2*%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name 
ѓ
 layer_conv1/kernel/Adam_1/AssignAssignlayer_conv1/kernel/Adam_1+layer_conv1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/Adam_1/readIdentitylayer_conv1/kernel/Adam_1*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 

'layer_conv1/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
І
layer_conv1/bias/Adam
VariableV2*
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
й
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(

layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 

)layer_conv1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ј
layer_conv1/bias/Adam_1
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container 
п
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 

layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
Й
9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

/layer_conv2/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

)layer_conv2/kernel/Adam/Initializer/zerosFill9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensor/layer_conv2/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*&
_output_shapes
:  
Т
layer_conv2/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  
э
layer_conv2/kernel/Adam/AssignAssignlayer_conv2/kernel/Adam)layer_conv2/kernel/Adam/Initializer/zeros*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0

layer_conv2/kernel/Adam/readIdentitylayer_conv2/kernel/Adam*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
Л
;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

1layer_conv2/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *    

+layer_conv2/kernel/Adam_1/Initializer/zerosFill;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1layer_conv2/kernel/Adam_1/Initializer/zeros/Const*%
_class
loc:@layer_conv2/kernel*

index_type0*&
_output_shapes
:  *
T0
Ф
layer_conv2/kernel/Adam_1
VariableV2*%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name 
ѓ
 layer_conv2/kernel/Adam_1/AssignAssignlayer_conv2/kernel/Adam_1+layer_conv2/kernel/Adam_1/Initializer/zeros*&
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(

layer_conv2/kernel/Adam_1/readIdentitylayer_conv2/kernel/Adam_1*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  

'layer_conv2/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
І
layer_conv2/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: 
й
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 

layer_conv2/bias/Adam/readIdentitylayer_conv2/bias/Adam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias

)layer_conv2/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
valueB *    
Ј
layer_conv2/bias/Adam_1
VariableV2*
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
п
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

layer_conv2/bias/Adam_1/readIdentitylayer_conv2/bias/Adam_1*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
­
7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0

-layer_fc1/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
љ
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0
В
layer_fc1/kernel/Adam
VariableV2*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

п
layer_fc1/kernel/Adam/AssignAssignlayer_fc1/kernel/Adam'layer_fc1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:


layer_fc1/kernel/Adam/readIdentitylayer_fc1/kernel/Adam*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

Џ
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0
Д
layer_fc1/kernel/Adam_1
VariableV2*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

х
layer_fc1/kernel/Adam_1/AssignAssignlayer_fc1/kernel/Adam_1)layer_fc1/kernel/Adam_1/Initializer/zeros*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1* 
_output_shapes
:
*
T0*#
_class
loc:@layer_fc1/kernel

%layer_fc1/bias/Adam/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Є
layer_fc1/bias/Adam
VariableV2*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
в
layer_fc1/bias/Adam/AssignAssignlayer_fc1/bias/Adam%layer_fc1/bias/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:

layer_fc1/bias/Adam/readIdentitylayer_fc1/bias/Adam*
_output_shapes	
:*
T0*!
_class
loc:@layer_fc1/bias

'layer_fc1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:
І
layer_fc1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:
и
layer_fc1/bias/Adam_1/AssignAssignlayer_fc1/bias/Adam_1'layer_fc1/bias/Adam_1/Initializer/zeros*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

layer_fc1/bias/Adam_1/readIdentitylayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:*
T0
Ћ
6word_embeddings/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*"
_class
loc:@word_embeddings*
valueB"      

,word_embeddings/Adam/Initializer/zeros/ConstConst*"
_class
loc:@word_embeddings*
valueB
 *    *
dtype0*
_output_shapes
: 
є
&word_embeddings/Adam/Initializer/zerosFill6word_embeddings/Adam/Initializer/zeros/shape_as_tensor,word_embeddings/Adam/Initializer/zeros/Const*
T0*"
_class
loc:@word_embeddings*

index_type0*
_output_shapes
:	 
Ў
word_embeddings/Adam
VariableV2*"
_class
loc:@word_embeddings*
	container *
shape:	 *
dtype0*
_output_shapes
:	 *
shared_name 
к
word_embeddings/Adam/AssignAssignword_embeddings/Adam&word_embeddings/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*"
_class
loc:@word_embeddings

word_embeddings/Adam/readIdentityword_embeddings/Adam*
_output_shapes
:	 *
T0*"
_class
loc:@word_embeddings
­
8word_embeddings/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*"
_class
loc:@word_embeddings*
valueB"      

.word_embeddings/Adam_1/Initializer/zeros/ConstConst*"
_class
loc:@word_embeddings*
valueB
 *    *
dtype0*
_output_shapes
: 
њ
(word_embeddings/Adam_1/Initializer/zerosFill8word_embeddings/Adam_1/Initializer/zeros/shape_as_tensor.word_embeddings/Adam_1/Initializer/zeros/Const*
_output_shapes
:	 *
T0*"
_class
loc:@word_embeddings*

index_type0
А
word_embeddings/Adam_1
VariableV2*
dtype0*
_output_shapes
:	 *
shared_name *"
_class
loc:@word_embeddings*
	container *
shape:	 
р
word_embeddings/Adam_1/AssignAssignword_embeddings/Adam_1(word_embeddings/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 

word_embeddings/Adam_1/readIdentityword_embeddings/Adam_1*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
П
@rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   *
dtype0
Љ
6rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *    

0rnn/basic_rnn_cell/kernel/Adam/Initializer/zerosFill@rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros/shape_as_tensor6rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*

index_type0*
_output_shapes

:`@
Р
rnn/basic_rnn_cell/kernel/Adam
VariableV2*
_output_shapes

:`@*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
	container *
shape
:`@*
dtype0

%rnn/basic_rnn_cell/kernel/Adam/AssignAssignrnn/basic_rnn_cell/kernel/Adam0rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
І
#rnn/basic_rnn_cell/kernel/Adam/readIdentityrnn/basic_rnn_cell/kernel/Adam*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes

:`@
С
Brnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   *
dtype0*
_output_shapes
:
Ћ
8rnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *    *
dtype0
Ё
2rnn/basic_rnn_cell/kernel/Adam_1/Initializer/zerosFillBrnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensor8rnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*

index_type0*
_output_shapes

:`@
Т
 rnn/basic_rnn_cell/kernel/Adam_1
VariableV2*
	container *
shape
:`@*
dtype0*
_output_shapes

:`@*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/kernel

'rnn/basic_rnn_cell/kernel/Adam_1/AssignAssign rnn/basic_rnn_cell/kernel/Adam_12rnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
Њ
%rnn/basic_rnn_cell/kernel/Adam_1/readIdentity rnn/basic_rnn_cell/kernel/Adam_1*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes

:`@
Ї
.rnn/basic_rnn_cell/bias/Adam/Initializer/zerosConst**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Д
rnn/basic_rnn_cell/bias/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias*
	container *
shape:@
ѕ
#rnn/basic_rnn_cell/bias/Adam/AssignAssignrnn/basic_rnn_cell/bias/Adam.rnn/basic_rnn_cell/bias/Adam/Initializer/zeros*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@*
use_locking(

!rnn/basic_rnn_cell/bias/Adam/readIdentityrnn/basic_rnn_cell/bias/Adam*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
_output_shapes
:@
Љ
0rnn/basic_rnn_cell/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ж
rnn/basic_rnn_cell/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias*
	container *
shape:@
ћ
%rnn/basic_rnn_cell/bias/Adam_1/AssignAssignrnn/basic_rnn_cell/bias/Adam_10rnn/basic_rnn_cell/bias/Adam_1/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(
 
#rnn/basic_rnn_cell/bias/Adam_1/readIdentityrnn/basic_rnn_cell/bias/Adam_1*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
_output_shapes
:@
З
<layer_rnn_fc_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@      *
dtype0
Ё
2layer_rnn_fc_1/kernel/Adam/Initializer/zeros/ConstConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

,layer_rnn_fc_1/kernel/Adam/Initializer/zerosFill<layer_rnn_fc_1/kernel/Adam/Initializer/zeros/shape_as_tensor2layer_rnn_fc_1/kernel/Adam/Initializer/zeros/Const*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*

index_type0*
_output_shapes
:	@
К
layer_rnn_fc_1/kernel/Adam
VariableV2*
	container *
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name *(
_class
loc:@layer_rnn_fc_1/kernel
ђ
!layer_rnn_fc_1/kernel/Adam/AssignAssignlayer_rnn_fc_1/kernel/Adam,layer_rnn_fc_1/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel

layer_rnn_fc_1/kernel/Adam/readIdentitylayer_rnn_fc_1/kernel/Adam*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@
Й
>layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Ѓ
4layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros/ConstConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

.layer_rnn_fc_1/kernel/Adam_1/Initializer/zerosFill>layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor4layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes
:	@*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*

index_type0
М
layer_rnn_fc_1/kernel/Adam_1
VariableV2*(
_class
loc:@layer_rnn_fc_1/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name 
ј
#layer_rnn_fc_1/kernel/Adam_1/AssignAssignlayer_rnn_fc_1/kernel/Adam_1.layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@

!layer_rnn_fc_1/kernel/Adam_1/readIdentitylayer_rnn_fc_1/kernel/Adam_1*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@
Ё
*layer_rnn_fc_1/bias/Adam/Initializer/zerosConst*
_output_shapes	
:*&
_class
loc:@layer_rnn_fc_1/bias*
valueB*    *
dtype0
Ў
layer_rnn_fc_1/bias/Adam
VariableV2*&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ц
layer_rnn_fc_1/bias/Adam/AssignAssignlayer_rnn_fc_1/bias/Adam*layer_rnn_fc_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:

layer_rnn_fc_1/bias/Adam/readIdentitylayer_rnn_fc_1/bias/Adam*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
_output_shapes	
:
Ѓ
,layer_rnn_fc_1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:*&
_class
loc:@layer_rnn_fc_1/bias*
valueB*    
А
layer_rnn_fc_1/bias/Adam_1
VariableV2*
shared_name *&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ь
!layer_rnn_fc_1/bias/Adam_1/AssignAssignlayer_rnn_fc_1/bias/Adam_1,layer_rnn_fc_1/bias/Adam_1/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(

layer_rnn_fc_1/bias/Adam_1/readIdentitylayer_rnn_fc_1/bias/Adam_1*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
_output_shapes	
:
П
@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"      *
dtype0
Љ
6layer_combine_fc_x/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    

0layer_combine_fc_x/kernel/Adam/Initializer/zerosFill@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_x/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0* 
_output_shapes
:

Ф
layer_combine_fc_x/kernel/Adam
VariableV2*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:


%layer_combine_fc_x/kernel/Adam/AssignAssignlayer_combine_fc_x/kernel/Adam0layer_combine_fc_x/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
Ј
#layer_combine_fc_x/kernel/Adam/readIdentitylayer_combine_fc_x/kernel/Adam*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:

С
Blayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ћ
8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѓ
2layer_combine_fc_x/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0* 
_output_shapes
:

Ц
 layer_combine_fc_x/kernel/Adam_1
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel

'layer_combine_fc_x/kernel/Adam_1/AssignAssign layer_combine_fc_x/kernel/Adam_12layer_combine_fc_x/kernel/Adam_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
Ќ
%layer_combine_fc_x/kernel/Adam_1/readIdentity layer_combine_fc_x/kernel/Adam_1* 
_output_shapes
:
*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
Љ
.layer_combine_fc_x/bias/Adam/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ж
layer_combine_fc_x/bias/Adam
VariableV2*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
і
#layer_combine_fc_x/bias/Adam/AssignAssignlayer_combine_fc_x/bias/Adam.layer_combine_fc_x/bias/Adam/Initializer/zeros*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

!layer_combine_fc_x/bias/Adam/readIdentitylayer_combine_fc_x/bias/Adam*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:
Ћ
0layer_combine_fc_x/bias/Adam_1/Initializer/zerosConst*
_output_shapes	
:**
_class 
loc:@layer_combine_fc_x/bias*
valueB*    *
dtype0
И
layer_combine_fc_x/bias/Adam_1
VariableV2*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ќ
%layer_combine_fc_x/bias/Adam_1/AssignAssignlayer_combine_fc_x/bias/Adam_10layer_combine_fc_x/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:
Ё
#layer_combine_fc_x/bias/Adam_1/readIdentitylayer_combine_fc_x/bias/Adam_1*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:
П
@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"      
Љ
6layer_combine_fc_y/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0layer_combine_fc_y/kernel/Adam/Initializer/zerosFill@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_y/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	
Т
layer_combine_fc_y/kernel/Adam
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	

%layer_combine_fc_y/kernel/Adam/AssignAssignlayer_combine_fc_y/kernel/Adam0layer_combine_fc_y/kernel/Adam/Initializer/zeros*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
Ї
#layer_combine_fc_y/kernel/Adam/readIdentitylayer_combine_fc_y/kernel/Adam*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	
С
Blayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ћ
8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ђ
2layer_combine_fc_y/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	
Ф
 layer_combine_fc_y/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	

'layer_combine_fc_y/kernel/Adam_1/AssignAssign layer_combine_fc_y/kernel/Adam_12layer_combine_fc_y/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
Ћ
%layer_combine_fc_y/kernel/Adam_1/readIdentity layer_combine_fc_y/kernel/Adam_1*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	
Ї
.layer_combine_fc_y/bias/Adam/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
Д
layer_combine_fc_y/bias/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias
ѕ
#layer_combine_fc_y/bias/Adam/AssignAssignlayer_combine_fc_y/bias/Adam.layer_combine_fc_y/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias

!layer_combine_fc_y/bias/Adam/readIdentitylayer_combine_fc_y/bias/Adam*
_output_shapes
:*
T0**
_class 
loc:@layer_combine_fc_y/bias
Љ
0layer_combine_fc_y/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
Ж
layer_combine_fc_y/bias/Adam_1
VariableV2*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:*
dtype0
ћ
%layer_combine_fc_y/bias/Adam_1/AssignAssignlayer_combine_fc_y/bias/Adam_10layer_combine_fc_y/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
 
#layer_combine_fc_y/bias/Adam_1/readIdentitylayer_combine_fc_y/bias/Adam_1*
T0**
_class 
loc:@layer_combine_fc_y/bias*
_output_shapes
:
W
Adam/learning_rateConst*
_output_shapes
: *
valueB
 *Зб8*
dtype0
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
_output_shapes
: *
valueB
 *wЬ+2*
dtype0

(Adam/update_layer_conv1/kernel/ApplyAdam	ApplyAdamlayer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_conv1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*%
_class
loc:@layer_conv1/kernel*
use_nesterov( *&
_output_shapes
: 

&Adam/update_layer_conv1/bias/ApplyAdam	ApplyAdamlayer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1*#
_class
loc:@layer_conv1/bias*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0

(Adam/update_layer_conv2/kernel/ApplyAdam	ApplyAdamlayer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1*
T0*%
_class
loc:@layer_conv2/kernel*
use_nesterov( *&
_output_shapes
:  *
use_locking( 

&Adam/update_layer_conv2/bias/ApplyAdam	ApplyAdamlayer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_conv2/bias*
use_nesterov( *
_output_shapes
: 

&Adam/update_layer_fc1/kernel/ApplyAdam	ApplyAdamlayer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1*#
_class
loc:@layer_fc1/kernel*
use_nesterov( * 
_output_shapes
:
*
use_locking( *
T0
ј
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@layer_fc1/bias*
use_nesterov( *
_output_shapes	
:
Ч
"Adam/update_word_embeddings/UniqueUnique)gradients/embedding_lookup_grad/Reshape_1*
out_idx0*
T0	*"
_class
loc:@word_embeddings*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ї
!Adam/update_word_embeddings/ShapeShape"Adam/update_word_embeddings/Unique*
T0	*"
_class
loc:@word_embeddings*
out_type0*
_output_shapes
:

/Adam/update_word_embeddings/strided_slice/stackConst*"
_class
loc:@word_embeddings*
valueB: *
dtype0*
_output_shapes
:

1Adam/update_word_embeddings/strided_slice/stack_1Const*"
_class
loc:@word_embeddings*
valueB:*
dtype0*
_output_shapes
:

1Adam/update_word_embeddings/strided_slice/stack_2Const*"
_class
loc:@word_embeddings*
valueB:*
dtype0*
_output_shapes
:
Љ
)Adam/update_word_embeddings/strided_sliceStridedSlice!Adam/update_word_embeddings/Shape/Adam/update_word_embeddings/strided_slice/stack1Adam/update_word_embeddings/strided_slice/stack_11Adam/update_word_embeddings/strided_slice/stack_2*
Index0*
T0*"
_class
loc:@word_embeddings*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
И
.Adam/update_word_embeddings/UnsortedSegmentSumUnsortedSegmentSum'gradients/embedding_lookup_grad/Reshape$Adam/update_word_embeddings/Unique:1)Adam/update_word_embeddings/strided_slice*"
_class
loc:@word_embeddings*'
_output_shapes
:џџџџџџџџџ *
Tnumsegments0*
Tindices0*
T0

!Adam/update_word_embeddings/sub/xConst*"
_class
loc:@word_embeddings*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Adam/update_word_embeddings/subSub!Adam/update_word_embeddings/sub/xbeta2_power/read*
_output_shapes
: *
T0*"
_class
loc:@word_embeddings

 Adam/update_word_embeddings/SqrtSqrtAdam/update_word_embeddings/sub*"
_class
loc:@word_embeddings*
_output_shapes
: *
T0
Ё
Adam/update_word_embeddings/mulMulAdam/learning_rate Adam/update_word_embeddings/Sqrt*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 

#Adam/update_word_embeddings/sub_1/xConst*
dtype0*
_output_shapes
: *"
_class
loc:@word_embeddings*
valueB
 *  ?
Є
!Adam/update_word_embeddings/sub_1Sub#Adam/update_word_embeddings/sub_1/xbeta1_power/read*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
З
#Adam/update_word_embeddings/truedivRealDivAdam/update_word_embeddings/mul!Adam/update_word_embeddings/sub_1*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 

#Adam/update_word_embeddings/sub_2/xConst*"
_class
loc:@word_embeddings*
valueB
 *  ?*
dtype0*
_output_shapes
: 

!Adam/update_word_embeddings/sub_2Sub#Adam/update_word_embeddings/sub_2/x
Adam/beta1*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
б
!Adam/update_word_embeddings/mul_1Mul.Adam/update_word_embeddings/UnsortedSegmentSum!Adam/update_word_embeddings/sub_2*
T0*"
_class
loc:@word_embeddings*'
_output_shapes
:џџџџџџџџџ 

!Adam/update_word_embeddings/mul_2Mulword_embeddings/Adam/read
Adam/beta1*
_output_shapes
:	 *
T0*"
_class
loc:@word_embeddings
м
"Adam/update_word_embeddings/AssignAssignword_embeddings/Adam!Adam/update_word_embeddings/mul_2*
use_locking( *
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 
Ї
&Adam/update_word_embeddings/ScatterAdd
ScatterAddword_embeddings/Adam"Adam/update_word_embeddings/Unique!Adam/update_word_embeddings/mul_1#^Adam/update_word_embeddings/Assign*
use_locking( *
Tindices0	*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
о
!Adam/update_word_embeddings/mul_3Mul.Adam/update_word_embeddings/UnsortedSegmentSum.Adam/update_word_embeddings/UnsortedSegmentSum*
T0*"
_class
loc:@word_embeddings*'
_output_shapes
:џџџџџџџџџ 

#Adam/update_word_embeddings/sub_3/xConst*"
_class
loc:@word_embeddings*
valueB
 *  ?*
dtype0*
_output_shapes
: 

!Adam/update_word_embeddings/sub_3Sub#Adam/update_word_embeddings/sub_3/x
Adam/beta2*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
Ф
!Adam/update_word_embeddings/mul_4Mul!Adam/update_word_embeddings/mul_3!Adam/update_word_embeddings/sub_3*'
_output_shapes
:џџџџџџџџџ *
T0*"
_class
loc:@word_embeddings

!Adam/update_word_embeddings/mul_5Mulword_embeddings/Adam_1/read
Adam/beta2*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
р
$Adam/update_word_embeddings/Assign_1Assignword_embeddings/Adam_1!Adam/update_word_embeddings/mul_5*
_output_shapes
:	 *
use_locking( *
T0*"
_class
loc:@word_embeddings*
validate_shape(
­
(Adam/update_word_embeddings/ScatterAdd_1
ScatterAddword_embeddings/Adam_1"Adam/update_word_embeddings/Unique!Adam/update_word_embeddings/mul_4%^Adam/update_word_embeddings/Assign_1*"
_class
loc:@word_embeddings*
_output_shapes
:	 *
use_locking( *
Tindices0	*
T0
Ђ
"Adam/update_word_embeddings/Sqrt_1Sqrt(Adam/update_word_embeddings/ScatterAdd_1*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
У
!Adam/update_word_embeddings/mul_6Mul#Adam/update_word_embeddings/truediv&Adam/update_word_embeddings/ScatterAdd*"
_class
loc:@word_embeddings*
_output_shapes
:	 *
T0
І
Adam/update_word_embeddings/addAdd"Adam/update_word_embeddings/Sqrt_1Adam/epsilon*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
Т
%Adam/update_word_embeddings/truediv_1RealDiv!Adam/update_word_embeddings/mul_6Adam/update_word_embeddings/add*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
Ы
%Adam/update_word_embeddings/AssignSub	AssignSubword_embeddings%Adam/update_word_embeddings/truediv_1*
use_locking( *
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	 
Ю
&Adam/update_word_embeddings/group_depsNoOp&^Adam/update_word_embeddings/AssignSub'^Adam/update_word_embeddings/ScatterAdd)^Adam/update_word_embeddings/ScatterAdd_1*"
_class
loc:@word_embeddings
Г
/Adam/update_rnn/basic_rnn_cell/kernel/ApplyAdam	ApplyAdamrnn/basic_rnn_cell/kernelrnn/basic_rnn_cell/kernel/Adam rnn/basic_rnn_cell/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/rnn/while/basic_rnn_cell/MatMul/Enter_grad/b_acc_3*
_output_shapes

:`@*
use_locking( *
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
use_nesterov( 
І
-Adam/update_rnn/basic_rnn_cell/bias/ApplyAdam	ApplyAdamrnn/basic_rnn_cell/biasrnn/basic_rnn_cell/bias/Adamrnn/basic_rnn_cell/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/rnn/while/basic_rnn_cell/BiasAdd/Enter_grad/b_acc_3*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( 
Ѓ
+Adam/update_layer_rnn_fc_1/kernel/ApplyAdam	ApplyAdamlayer_rnn_fc_1/kernellayer_rnn_fc_1/kernel/Adamlayer_rnn_fc_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/layer_rnn_fc_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
use_nesterov( *
_output_shapes
:	@

)Adam/update_layer_rnn_fc_1/bias/ApplyAdam	ApplyAdamlayer_rnn_fc_1/biaslayer_rnn_fc_1/bias/Adamlayer_rnn_fc_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon@gradients/layer_rnn_fc_1/BiasAdd_grad/tuple/control_dependency_1*&
_class
loc:@layer_rnn_fc_1/bias*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0
М
/Adam/update_layer_combine_fc_x/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
use_nesterov( * 
_output_shapes
:

Ў
-Adam/update_layer_combine_fc_x/bias/ApplyAdam	ApplyAdamlayer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_x/bias*
use_nesterov( *
_output_shapes	
:
Л
/Adam/update_layer_combine_fc_y/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
use_nesterov( *
_output_shapes
:	*
use_locking( *
T0
­
-Adam/update_layer_combine_fc_y/bias/ApplyAdam	ApplyAdamlayer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_y/bias

Adam/mulMulbeta1_power/read
Adam/beta1.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*^Adam/update_layer_rnn_fc_1/bias/ApplyAdam,^Adam/update_layer_rnn_fc_1/kernel/ApplyAdam.^Adam/update_rnn/basic_rnn_cell/bias/ApplyAdam0^Adam/update_rnn/basic_rnn_cell/kernel/ApplyAdam'^Adam/update_word_embeddings/group_deps*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes
: 
Ђ
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0**
_class 
loc:@layer_combine_fc_x/bias


Adam/mul_1Mulbeta2_power/read
Adam/beta2.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*^Adam/update_layer_rnn_fc_1/bias/ApplyAdam,^Adam/update_layer_rnn_fc_1/kernel/ApplyAdam.^Adam/update_rnn/basic_rnn_cell/bias/ApplyAdam0^Adam/update_rnn/basic_rnn_cell/kernel/ApplyAdam'^Adam/update_word_embeddings/group_deps*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes
: 
І
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes
: 
в
Adam/updateNoOp^Adam/Assign^Adam/Assign_1.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*^Adam/update_layer_rnn_fc_1/bias/ApplyAdam,^Adam/update_layer_rnn_fc_1/kernel/ApplyAdam.^Adam/update_rnn/basic_rnn_cell/bias/ApplyAdam0^Adam/update_rnn/basic_rnn_cell/kernel/ApplyAdam'^Adam/update_word_embeddings/group_deps
z

Adam/valueConst^Adam/update*
_class
loc:@global_step*
value	B	 R*
dtype0	*
_output_shapes
: 
~
Adam	AssignAddglobal_step
Adam/value*
_output_shapes
: *
use_locking( *
T0	*
_class
loc:@global_step
W
EqualEqualArgMaxIteratorGetNext:3*
T0	*#
_output_shapes
:џџџџџџџџџ
c
ToFloatCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0

 accuracy/total/Initializer/zerosConst*!
_class
loc:@accuracy/total*
valueB
 *    *
dtype0*
_output_shapes
: 

accuracy/total
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/total
О
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/total*
validate_shape(*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 

 accuracy/count/Initializer/zerosConst*!
_class
loc:@accuracy/count*
valueB
 *    *
dtype0*
_output_shapes
: 

accuracy/count
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/count
О
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/count*
validate_shape(*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
O
accuracy/SizeSizeToFloat*
T0*
out_type0*
_output_shapes
: 
g
accuracy/ToFloatCastaccuracy/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
Є
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat^ToFloat*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: *
use_locking( 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
_output_shapes
: *
T0
X
accuracy/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
accuracy/GreaterGreateraccuracy/count/readaccuracy/zeros_like*
T0*
_output_shapes
: 
r
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/zeros_like*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
_output_shapes
: *
T0
Z
accuracy/zeros_like_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
k
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
|
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/zeros_like_1*
T0*
_output_shapes
: 

mean_1/total/Initializer/zerosConst*
_class
loc:@mean_1/total*
valueB
 *    *
dtype0*
_output_shapes
: 

mean_1/total
VariableV2*
_class
loc:@mean_1/total*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ж
mean_1/total/AssignAssignmean_1/totalmean_1/total/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean_1/total*
validate_shape(*
_output_shapes
: 
m
mean_1/total/readIdentitymean_1/total*
_output_shapes
: *
T0*
_class
loc:@mean_1/total

mean_1/count/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@mean_1/count*
valueB
 *    *
dtype0

mean_1/count
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean_1/count
Ж
mean_1/count/AssignAssignmean_1/countmean_1/count/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean_1/count*
validate_shape(*
_output_shapes
: 
m
mean_1/count/readIdentitymean_1/count*
T0*
_class
loc:@mean_1/count*
_output_shapes
: 
M
mean_1/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
c
mean_1/ToFloatCastmean_1/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
O
mean_1/ConstConst*
dtype0*
_output_shapes
: *
valueB 
c

mean_1/SumSumMeanmean_1/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

mean_1/AssignAdd	AssignAddmean_1/total
mean_1/Sum*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@mean_1/total

mean_1/AssignAdd_1	AssignAddmean_1/countmean_1/ToFloat^Mean*
use_locking( *
T0*
_class
loc:@mean_1/count*
_output_shapes
: 
`
mean_1/truedivRealDivmean_1/total/readmean_1/count/read*
T0*
_output_shapes
: 
V
mean_1/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
`
mean_1/GreaterGreatermean_1/count/readmean_1/zeros_like*
T0*
_output_shapes
: 
j
mean_1/valueSelectmean_1/Greatermean_1/truedivmean_1/zeros_like*
_output_shapes
: *
T0
b
mean_1/truediv_1RealDivmean_1/AssignAddmean_1/AssignAdd_1*
_output_shapes
: *
T0
X
mean_1/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
e
mean_1/Greater_1Greatermean_1/AssignAdd_1mean_1/zeros_like_1*
T0*
_output_shapes
: 
t
mean_1/update_opSelectmean_1/Greater_1mean_1/truediv_1mean_1/zeros_like_1*
T0*
_output_shapes
: 
:

group_depsNoOp^accuracy/update_op^mean_1/update_op
{
eval_step/Initializer/zerosConst*
_class
loc:@eval_step*
value	B	 R *
dtype0	*
_output_shapes
: 

	eval_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@eval_step*
	container *
shape: 
Њ
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@eval_step*
validate_shape(*
_output_shapes
: 
d
eval_step/readIdentity	eval_step*
_output_shapes
: *
T0	*
_class
loc:@eval_step
Q
AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 

	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
T0	*
_class
loc:@eval_step*
_output_shapes
: *
use_locking(
U
readIdentity	eval_step
^AssignAdd^group_deps*
T0	*
_output_shapes
: 
;
IdentityIdentityread*
T0	*
_output_shapes
: 
М
initNoOp^beta1_power/Assign^beta2_power/Assign^global_step/Assign$^layer_combine_fc_x/bias/Adam/Assign&^layer_combine_fc_x/bias/Adam_1/Assign^layer_combine_fc_x/bias/Assign&^layer_combine_fc_x/kernel/Adam/Assign(^layer_combine_fc_x/kernel/Adam_1/Assign!^layer_combine_fc_x/kernel/Assign$^layer_combine_fc_y/bias/Adam/Assign&^layer_combine_fc_y/bias/Adam_1/Assign^layer_combine_fc_y/bias/Assign&^layer_combine_fc_y/kernel/Adam/Assign(^layer_combine_fc_y/kernel/Adam_1/Assign!^layer_combine_fc_y/kernel/Assign^layer_conv1/bias/Adam/Assign^layer_conv1/bias/Adam_1/Assign^layer_conv1/bias/Assign^layer_conv1/kernel/Adam/Assign!^layer_conv1/kernel/Adam_1/Assign^layer_conv1/kernel/Assign^layer_conv2/bias/Adam/Assign^layer_conv2/bias/Adam_1/Assign^layer_conv2/bias/Assign^layer_conv2/kernel/Adam/Assign!^layer_conv2/kernel/Adam_1/Assign^layer_conv2/kernel/Assign^layer_fc1/bias/Adam/Assign^layer_fc1/bias/Adam_1/Assign^layer_fc1/bias/Assign^layer_fc1/kernel/Adam/Assign^layer_fc1/kernel/Adam_1/Assign^layer_fc1/kernel/Assign ^layer_rnn_fc_1/bias/Adam/Assign"^layer_rnn_fc_1/bias/Adam_1/Assign^layer_rnn_fc_1/bias/Assign"^layer_rnn_fc_1/kernel/Adam/Assign$^layer_rnn_fc_1/kernel/Adam_1/Assign^layer_rnn_fc_1/kernel/Assign$^rnn/basic_rnn_cell/bias/Adam/Assign&^rnn/basic_rnn_cell/bias/Adam_1/Assign^rnn/basic_rnn_cell/bias/Assign&^rnn/basic_rnn_cell/kernel/Adam/Assign(^rnn/basic_rnn_cell/kernel/Adam_1/Assign!^rnn/basic_rnn_cell/kernel/Assign^word_embeddings/Adam/Assign^word_embeddings/Adam_1/Assign^word_embeddings/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
Џ
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Ћ
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
dtype0
Џ
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
dtype0
Ћ
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias
Ћ
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Ї
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Љ
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedword_embeddings*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
Н
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedrnn/basic_rnn_cell/kernel*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
Й
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedrnn/basic_rnn_cell/bias**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
Ж
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedlayer_rnn_fc_1/kernel*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
В
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializedlayer_rnn_fc_1/bias*
dtype0*
_output_shapes
: *&
_class
loc:@layer_rnn_fc_1/bias
О
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializedlayer_combine_fc_x/kernel*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0
К
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializedlayer_combine_fc_x/bias**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
О
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializedlayer_combine_fc_y/kernel*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
К
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedlayer_combine_fc_y/bias**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
Ў
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedbeta1_power**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
Ў
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedbeta2_power**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
Е
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializedlayer_conv1/kernel/Adam*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
З
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Г
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Е
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
З
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedlayer_conv2/bias/Adam*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
Г
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Г
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
­
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedlayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Џ
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Џ
7report_uninitialized_variables/IsVariableInitialized_30IsVariableInitializedword_embeddings/Adam*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_31IsVariableInitializedword_embeddings/Adam_1*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
У
7report_uninitialized_variables/IsVariableInitialized_32IsVariableInitializedrnn/basic_rnn_cell/kernel/Adam*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
Х
7report_uninitialized_variables/IsVariableInitialized_33IsVariableInitialized rnn/basic_rnn_cell/kernel/Adam_1*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
П
7report_uninitialized_variables/IsVariableInitialized_34IsVariableInitializedrnn/basic_rnn_cell/bias/Adam*
dtype0*
_output_shapes
: **
_class 
loc:@rnn/basic_rnn_cell/bias
С
7report_uninitialized_variables/IsVariableInitialized_35IsVariableInitializedrnn/basic_rnn_cell/bias/Adam_1**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
Л
7report_uninitialized_variables/IsVariableInitialized_36IsVariableInitializedlayer_rnn_fc_1/kernel/Adam*
_output_shapes
: *(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0
Н
7report_uninitialized_variables/IsVariableInitialized_37IsVariableInitializedlayer_rnn_fc_1/kernel/Adam_1*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
З
7report_uninitialized_variables/IsVariableInitialized_38IsVariableInitializedlayer_rnn_fc_1/bias/Adam*
_output_shapes
: *&
_class
loc:@layer_rnn_fc_1/bias*
dtype0
Й
7report_uninitialized_variables/IsVariableInitialized_39IsVariableInitializedlayer_rnn_fc_1/bias/Adam_1*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
У
7report_uninitialized_variables/IsVariableInitialized_40IsVariableInitializedlayer_combine_fc_x/kernel/Adam*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
Х
7report_uninitialized_variables/IsVariableInitialized_41IsVariableInitialized layer_combine_fc_x/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
П
7report_uninitialized_variables/IsVariableInitialized_42IsVariableInitializedlayer_combine_fc_x/bias/Adam*
dtype0*
_output_shapes
: **
_class 
loc:@layer_combine_fc_x/bias
С
7report_uninitialized_variables/IsVariableInitialized_43IsVariableInitializedlayer_combine_fc_x/bias/Adam_1**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
У
7report_uninitialized_variables/IsVariableInitialized_44IsVariableInitializedlayer_combine_fc_y/kernel/Adam*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
Х
7report_uninitialized_variables/IsVariableInitialized_45IsVariableInitialized layer_combine_fc_y/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
П
7report_uninitialized_variables/IsVariableInitialized_46IsVariableInitializedlayer_combine_fc_y/bias/Adam*
dtype0*
_output_shapes
: **
_class 
loc:@layer_combine_fc_y/bias
С
7report_uninitialized_variables/IsVariableInitialized_47IsVariableInitializedlayer_combine_fc_y/bias/Adam_1*
_output_shapes
: **
_class 
loc:@layer_combine_fc_y/bias*
dtype0
Ј
7report_uninitialized_variables/IsVariableInitialized_48IsVariableInitializedaccuracy/total*
dtype0*
_output_shapes
: *!
_class
loc:@accuracy/total
Ј
7report_uninitialized_variables/IsVariableInitialized_49IsVariableInitializedaccuracy/count*!
_class
loc:@accuracy/count*
dtype0*
_output_shapes
: 
Є
7report_uninitialized_variables/IsVariableInitialized_50IsVariableInitializedmean_1/total*
_class
loc:@mean_1/total*
dtype0*
_output_shapes
: 
Є
7report_uninitialized_variables/IsVariableInitialized_51IsVariableInitializedmean_1/count*
_class
loc:@mean_1/count*
dtype0*
_output_shapes
: 

7report_uninitialized_variables/IsVariableInitialized_52IsVariableInitialized	eval_step*
dtype0	*
_output_shapes
: *
_class
loc:@eval_step
Ж
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_247report_uninitialized_variables/IsVariableInitialized_257report_uninitialized_variables/IsVariableInitialized_267report_uninitialized_variables/IsVariableInitialized_277report_uninitialized_variables/IsVariableInitialized_287report_uninitialized_variables/IsVariableInitialized_297report_uninitialized_variables/IsVariableInitialized_307report_uninitialized_variables/IsVariableInitialized_317report_uninitialized_variables/IsVariableInitialized_327report_uninitialized_variables/IsVariableInitialized_337report_uninitialized_variables/IsVariableInitialized_347report_uninitialized_variables/IsVariableInitialized_357report_uninitialized_variables/IsVariableInitialized_367report_uninitialized_variables/IsVariableInitialized_377report_uninitialized_variables/IsVariableInitialized_387report_uninitialized_variables/IsVariableInitialized_397report_uninitialized_variables/IsVariableInitialized_407report_uninitialized_variables/IsVariableInitialized_417report_uninitialized_variables/IsVariableInitialized_427report_uninitialized_variables/IsVariableInitialized_437report_uninitialized_variables/IsVariableInitialized_447report_uninitialized_variables/IsVariableInitialized_457report_uninitialized_variables/IsVariableInitialized_467report_uninitialized_variables/IsVariableInitialized_477report_uninitialized_variables/IsVariableInitialized_487report_uninitialized_variables/IsVariableInitialized_497report_uninitialized_variables/IsVariableInitialized_507report_uninitialized_variables/IsVariableInitialized_517report_uninitialized_variables/IsVariableInitialized_52"/device:CPU:0*
N5*
_output_shapes
:5*
T0
*

axis 

)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:5
є

$report_uninitialized_variables/ConstConst"/device:CPU:0*

value
Bџ	5Bglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBword_embeddingsBrnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/biasBlayer_rnn_fc_1/kernelBlayer_rnn_fc_1/biasBlayer_combine_fc_x/kernelBlayer_combine_fc_x/biasBlayer_combine_fc_y/kernelBlayer_combine_fc_y/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Bword_embeddings/AdamBword_embeddings/Adam_1Brnn/basic_rnn_cell/kernel/AdamB rnn/basic_rnn_cell/kernel/Adam_1Brnn/basic_rnn_cell/bias/AdamBrnn/basic_rnn_cell/bias/Adam_1Blayer_rnn_fc_1/kernel/AdamBlayer_rnn_fc_1/kernel/Adam_1Blayer_rnn_fc_1/bias/AdamBlayer_rnn_fc_1/bias/Adam_1Blayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Baccuracy/totalBaccuracy/countBmean_1/totalBmean_1/countB	eval_step*
dtype0*
_output_shapes
:5

1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
valueB:5*
dtype0*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
ш
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:5*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
№
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:5

Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
№
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask 
О
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ї
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:*

Tidx0
к
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
_output_shapes
:5*
T0*
Tshape0

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ъ
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
Tshape0*
_output_shapes
:5*
T0

В
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:џџџџџџџџџ*
T0

Х
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
Х
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
O
concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
Т
concat_1ConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat_1/axis*
T0*
N*#
_output_shapes
:џџџџџџџџџ*

Tidx0
Ё
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
Б
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Б
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Љ
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Ћ
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedword_embeddings*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
П
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedrnn/basic_rnn_cell/kernel*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
Л
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedrnn/basic_rnn_cell/bias**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
И
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedlayer_rnn_fc_1/kernel*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
Д
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializedlayer_rnn_fc_1/bias*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
Р
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializedlayer_combine_fc_x/kernel*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
М
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializedlayer_combine_fc_x/bias**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
Р
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializedlayer_combine_fc_y/kernel*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
М
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedlayer_combine_fc_y/bias**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
А
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedbeta1_power*
dtype0*
_output_shapes
: **
_class 
loc:@layer_combine_fc_x/bias
А
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedbeta2_power**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
З
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializedlayer_conv1/kernel/Adam*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Й
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedlayer_conv1/bias/Adam_1*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
З
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Й
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedlayer_conv2/bias/Adam*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_27IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Џ
9report_uninitialized_variables_1/IsVariableInitialized_28IsVariableInitializedlayer_fc1/bias/Adam*
dtype0*
_output_shapes
: *!
_class
loc:@layer_fc1/bias
Б
9report_uninitialized_variables_1/IsVariableInitialized_29IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Б
9report_uninitialized_variables_1/IsVariableInitialized_30IsVariableInitializedword_embeddings/Adam*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_31IsVariableInitializedword_embeddings/Adam_1*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
Х
9report_uninitialized_variables_1/IsVariableInitialized_32IsVariableInitializedrnn/basic_rnn_cell/kernel/Adam*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
Ч
9report_uninitialized_variables_1/IsVariableInitialized_33IsVariableInitialized rnn/basic_rnn_cell/kernel/Adam_1*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
С
9report_uninitialized_variables_1/IsVariableInitialized_34IsVariableInitializedrnn/basic_rnn_cell/bias/Adam**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
У
9report_uninitialized_variables_1/IsVariableInitialized_35IsVariableInitializedrnn/basic_rnn_cell/bias/Adam_1**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
Н
9report_uninitialized_variables_1/IsVariableInitialized_36IsVariableInitializedlayer_rnn_fc_1/kernel/Adam*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
П
9report_uninitialized_variables_1/IsVariableInitialized_37IsVariableInitializedlayer_rnn_fc_1/kernel/Adam_1*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
Й
9report_uninitialized_variables_1/IsVariableInitialized_38IsVariableInitializedlayer_rnn_fc_1/bias/Adam*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
Л
9report_uninitialized_variables_1/IsVariableInitialized_39IsVariableInitializedlayer_rnn_fc_1/bias/Adam_1*
_output_shapes
: *&
_class
loc:@layer_rnn_fc_1/bias*
dtype0
Х
9report_uninitialized_variables_1/IsVariableInitialized_40IsVariableInitializedlayer_combine_fc_x/kernel/Adam*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
Ч
9report_uninitialized_variables_1/IsVariableInitialized_41IsVariableInitialized layer_combine_fc_x/kernel/Adam_1*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0
С
9report_uninitialized_variables_1/IsVariableInitialized_42IsVariableInitializedlayer_combine_fc_x/bias/Adam**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
У
9report_uninitialized_variables_1/IsVariableInitialized_43IsVariableInitializedlayer_combine_fc_x/bias/Adam_1**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
Х
9report_uninitialized_variables_1/IsVariableInitialized_44IsVariableInitializedlayer_combine_fc_y/kernel/Adam*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
Ч
9report_uninitialized_variables_1/IsVariableInitialized_45IsVariableInitialized layer_combine_fc_y/kernel/Adam_1*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0
С
9report_uninitialized_variables_1/IsVariableInitialized_46IsVariableInitializedlayer_combine_fc_y/bias/Adam*
_output_shapes
: **
_class 
loc:@layer_combine_fc_y/bias*
dtype0
У
9report_uninitialized_variables_1/IsVariableInitialized_47IsVariableInitializedlayer_combine_fc_y/bias/Adam_1**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
ћ
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_199report_uninitialized_variables_1/IsVariableInitialized_209report_uninitialized_variables_1/IsVariableInitialized_219report_uninitialized_variables_1/IsVariableInitialized_229report_uninitialized_variables_1/IsVariableInitialized_239report_uninitialized_variables_1/IsVariableInitialized_249report_uninitialized_variables_1/IsVariableInitialized_259report_uninitialized_variables_1/IsVariableInitialized_269report_uninitialized_variables_1/IsVariableInitialized_279report_uninitialized_variables_1/IsVariableInitialized_289report_uninitialized_variables_1/IsVariableInitialized_299report_uninitialized_variables_1/IsVariableInitialized_309report_uninitialized_variables_1/IsVariableInitialized_319report_uninitialized_variables_1/IsVariableInitialized_329report_uninitialized_variables_1/IsVariableInitialized_339report_uninitialized_variables_1/IsVariableInitialized_349report_uninitialized_variables_1/IsVariableInitialized_359report_uninitialized_variables_1/IsVariableInitialized_369report_uninitialized_variables_1/IsVariableInitialized_379report_uninitialized_variables_1/IsVariableInitialized_389report_uninitialized_variables_1/IsVariableInitialized_399report_uninitialized_variables_1/IsVariableInitialized_409report_uninitialized_variables_1/IsVariableInitialized_419report_uninitialized_variables_1/IsVariableInitialized_429report_uninitialized_variables_1/IsVariableInitialized_439report_uninitialized_variables_1/IsVariableInitialized_449report_uninitialized_variables_1/IsVariableInitialized_459report_uninitialized_variables_1/IsVariableInitialized_469report_uninitialized_variables_1/IsVariableInitialized_47"/device:CPU:0*

axis *
N0*
_output_shapes
:0*
T0


+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:0
Џ

&report_uninitialized_variables_1/ConstConst"/device:CPU:0*Х	
valueЛ	BИ	0Bglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBword_embeddingsBrnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/biasBlayer_rnn_fc_1/kernelBlayer_rnn_fc_1/biasBlayer_combine_fc_x/kernelBlayer_combine_fc_x/biasBlayer_combine_fc_y/kernelBlayer_combine_fc_y/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Bword_embeddings/AdamBword_embeddings/Adam_1Brnn/basic_rnn_cell/kernel/AdamB rnn/basic_rnn_cell/kernel/Adam_1Brnn/basic_rnn_cell/bias/AdamBrnn/basic_rnn_cell/bias/Adam_1Blayer_rnn_fc_1/kernel/AdamBlayer_rnn_fc_1/kernel/Adam_1Blayer_rnn_fc_1/bias/AdamBlayer_rnn_fc_1/bias/Adam_1Blayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1*
dtype0*
_output_shapes
:0

3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:0*
dtype0*
_output_shapes
:

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
ђ
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask 

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:0*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
њ
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask 

5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:0*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
њ
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0
Т
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
N*
_output_shapes
:*

Tidx0*
T0
р
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:0

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
№
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
_output_shapes
:0*
T0
*
Tshape0
Ж
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:џџџџџџџџџ*
T0

Щ
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0	

;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Э
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ*
Taxis0
}
init_2NoOp^accuracy/count/Assign^accuracy/total/Assign^eval_step/Assign^mean_1/count/Assign^mean_1/total/Assign

init_all_tablesNoOp

init_3NoOp
8
group_deps_2NoOp^init_2^init_3^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_d200258616b54933a0170a007d7ab933/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ё

save/SaveV2/tensor_namesConst"/device:CPU:0*Х	
valueЛ	BИ	0Bbeta1_powerBbeta2_powerBglobal_stepBlayer_combine_fc_x/biasBlayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_x/kernelBlayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_y/biasBlayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Blayer_combine_fc_y/kernelBlayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_rnn_fc_1/biasBlayer_rnn_fc_1/bias/AdamBlayer_rnn_fc_1/bias/Adam_1Blayer_rnn_fc_1/kernelBlayer_rnn_fc_1/kernel/AdamBlayer_rnn_fc_1/kernel/Adam_1Brnn/basic_rnn_cell/biasBrnn/basic_rnn_cell/bias/AdamBrnn/basic_rnn_cell/bias/Adam_1Brnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/kernel/AdamB rnn/basic_rnn_cell/kernel/Adam_1Bword_embeddingsBword_embeddings/AdamBword_embeddings/Adam_1*
dtype0*
_output_shapes
:0
в
save/SaveV2/shape_and_slicesConst"/device:CPU:0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:0
т

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerglobal_steplayer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1layer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1layer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1layer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1layer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1layer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1layer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1layer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1layer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1layer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1layer_rnn_fc_1/biaslayer_rnn_fc_1/bias/Adamlayer_rnn_fc_1/bias/Adam_1layer_rnn_fc_1/kernellayer_rnn_fc_1/kernel/Adamlayer_rnn_fc_1/kernel/Adam_1rnn/basic_rnn_cell/biasrnn/basic_rnn_cell/bias/Adamrnn/basic_rnn_cell/bias/Adam_1rnn/basic_rnn_cell/kernelrnn/basic_rnn_cell/kernel/Adam rnn/basic_rnn_cell/kernel/Adam_1word_embeddingsword_embeddings/Adamword_embeddings/Adam_1"/device:CPU:0*>
dtypes4
220	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ќ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Є

save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*Х	
valueЛ	BИ	0Bbeta1_powerBbeta2_powerBglobal_stepBlayer_combine_fc_x/biasBlayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_x/kernelBlayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_y/biasBlayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Blayer_combine_fc_y/kernelBlayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_rnn_fc_1/biasBlayer_rnn_fc_1/bias/AdamBlayer_rnn_fc_1/bias/Adam_1Blayer_rnn_fc_1/kernelBlayer_rnn_fc_1/kernel/AdamBlayer_rnn_fc_1/kernel/Adam_1Brnn/basic_rnn_cell/biasBrnn/basic_rnn_cell/bias/AdamBrnn/basic_rnn_cell/bias/Adam_1Brnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/kernel/AdamB rnn/basic_rnn_cell/kernel/Adam_1Bword_embeddingsBword_embeddings/AdamBword_embeddings/Adam_1*
dtype0
е
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*>
dtypes4
220	*ж
_output_shapesУ
Р::::::::::::::::::::::::::::::::::::::::::::::::
Ј
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes
: 
Ќ
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes
: *
use_locking(
 
save/Assign_2Assignglobal_stepsave/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
Н
save/Assign_3Assignlayer_combine_fc_x/biassave/RestoreV2:3*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:
Т
save/Assign_4Assignlayer_combine_fc_x/bias/Adamsave/RestoreV2:4*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ф
save/Assign_5Assignlayer_combine_fc_x/bias/Adam_1save/RestoreV2:5*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ц
save/Assign_6Assignlayer_combine_fc_x/kernelsave/RestoreV2:6*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
Ы
save/Assign_7Assignlayer_combine_fc_x/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:

Э
save/Assign_8Assign layer_combine_fc_x/kernel/Adam_1save/RestoreV2:8* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(
М
save/Assign_9Assignlayer_combine_fc_y/biassave/RestoreV2:9**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
У
save/Assign_10Assignlayer_combine_fc_y/bias/Adamsave/RestoreV2:10*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
Х
save/Assign_11Assignlayer_combine_fc_y/bias/Adam_1save/RestoreV2:11*
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(
Ч
save/Assign_12Assignlayer_combine_fc_y/kernelsave/RestoreV2:12*
_output_shapes
:	*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(
Ь
save/Assign_13Assignlayer_combine_fc_y/kernel/Adamsave/RestoreV2:13*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	
Ю
save/Assign_14Assign layer_combine_fc_y/kernel/Adam_1save/RestoreV2:14*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	
А
save/Assign_15Assignlayer_conv1/biassave/RestoreV2:15*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Е
save/Assign_16Assignlayer_conv1/bias/Adamsave/RestoreV2:16*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias
З
save/Assign_17Assignlayer_conv1/bias/Adam_1save/RestoreV2:17*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Р
save/Assign_18Assignlayer_conv1/kernelsave/RestoreV2:18*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Х
save/Assign_19Assignlayer_conv1/kernel/Adamsave/RestoreV2:19*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
Ч
save/Assign_20Assignlayer_conv1/kernel/Adam_1save/RestoreV2:20*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
А
save/Assign_21Assignlayer_conv2/biassave/RestoreV2:21*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
Е
save/Assign_22Assignlayer_conv2/bias/Adamsave/RestoreV2:22*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
З
save/Assign_23Assignlayer_conv2/bias/Adam_1save/RestoreV2:23*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Р
save/Assign_24Assignlayer_conv2/kernelsave/RestoreV2:24*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel
Х
save/Assign_25Assignlayer_conv2/kernel/Adamsave/RestoreV2:25*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
Ч
save/Assign_26Assignlayer_conv2/kernel/Adam_1save/RestoreV2:26*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel
­
save/Assign_27Assignlayer_fc1/biassave/RestoreV2:27*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
В
save/Assign_28Assignlayer_fc1/bias/Adamsave/RestoreV2:28*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
Д
save/Assign_29Assignlayer_fc1/bias/Adam_1save/RestoreV2:29*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ж
save/Assign_30Assignlayer_fc1/kernelsave/RestoreV2:30*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:

Л
save/Assign_31Assignlayer_fc1/kernel/Adamsave/RestoreV2:31* 
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(
Н
save/Assign_32Assignlayer_fc1/kernel/Adam_1save/RestoreV2:32*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:

З
save/Assign_33Assignlayer_rnn_fc_1/biassave/RestoreV2:33*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
М
save/Assign_34Assignlayer_rnn_fc_1/bias/Adamsave/RestoreV2:34*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
О
save/Assign_35Assignlayer_rnn_fc_1/bias/Adam_1save/RestoreV2:35*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:
П
save/Assign_36Assignlayer_rnn_fc_1/kernelsave/RestoreV2:36*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@
Ф
save/Assign_37Assignlayer_rnn_fc_1/kernel/Adamsave/RestoreV2:37*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(
Ц
save/Assign_38Assignlayer_rnn_fc_1/kernel/Adam_1save/RestoreV2:38*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@
О
save/Assign_39Assignrnn/basic_rnn_cell/biassave/RestoreV2:39*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(
У
save/Assign_40Assignrnn/basic_rnn_cell/bias/Adamsave/RestoreV2:40*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@
Х
save/Assign_41Assignrnn/basic_rnn_cell/bias/Adam_1save/RestoreV2:41*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(
Ц
save/Assign_42Assignrnn/basic_rnn_cell/kernelsave/RestoreV2:42*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@*
use_locking(*
T0
Ы
save/Assign_43Assignrnn/basic_rnn_cell/kernel/Adamsave/RestoreV2:43*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
Э
save/Assign_44Assign rnn/basic_rnn_cell/kernel/Adam_1save/RestoreV2:44*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
Г
save/Assign_45Assignword_embeddingssave/RestoreV2:45*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
И
save/Assign_46Assignword_embeddings/Adamsave/RestoreV2:46*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 
К
save/Assign_47Assignword_embeddings/Adam_1save/RestoreV2:47*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	 *
use_locking(
О
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shardе
у
2
_make_dataset_soWvMtuA5sU
batchdatasetv2h
TensorSliceDataset/ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
dtype0*
valueB:
џџџџџџџџџЇ
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
T0*
Tshape0
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
Toutput_types
2*
output_shapes
: Ц
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*

Targuments
 *
output_shapes
: *8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9U*
output_types
2№

MapDataset
MapDatasetFlatMapDataset:handle:0"/device:CPU:0*

Targuments
 *(
output_shapes
:@:@:: *8
f3R1
/tf_data_structured_function_wrapper_IJ2bRSPJECE*
output_types
2				*
use_inter_op_parallelism(L
RepeatDataset/countConst"/device:CPU:0*
value	B	 R*
dtype0	Є
RepeatDatasetRepeatDatasetMapDataset:handle:0RepeatDataset/count:output:0"/device:CPU:0*
output_types
2				*(
output_shapes
:@:@:: S
BatchDatasetV2/batch_sizeConst"/device:CPU:0*
value
B	 R'*
dtype0	V
BatchDatasetV2/drop_remainderConst"/device:CPU:0*
dtype0
*
value	B
 Z 
BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0"BatchDatasetV2/batch_size:output:0&BatchDatasetV2/drop_remainder:output:0"/device:CPU:0*\
output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*
output_types
2				")
batchdatasetv2BatchDatasetV2:handle:0
Х

/tf_data_structured_function_wrapper_52oRgbbAY9U
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.H
compression_typeConst"/device:CPU:0*
valueB B *
dtype0F
buffer_sizeConst"/device:CPU:0*
valueB		 R*
dtype0	h
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"/device:CPU:0"+
tfrecorddatasetTFRecordDataset:handle:0
Є
Г
/tf_data_structured_function_wrapper_IJ2bRSPJECE
arg0)
%parsesingleexample_parsesingleexample	+
'parsesingleexample_parsesingleexample_0	+
'parsesingleexample_parsesingleexample_1	+
'parsesingleexample_parsesingleexample_2	2DWrapper for passing nested structures to and from tf.data functions.P
ParseSingleExample/ConstConst"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_1Const"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_3Const"/device:CPU:0*
valueB	 *
dtype0	
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0#ParseSingleExample/Const_2:output:0#ParseSingleExample/Const_3:output:0"/device:CPU:0*'
dense_shapes
: :@::@*
sparse_types
 *
sparse_keys
 *
Tdense
2				*

num_sparse *A

dense_keys3
1labelpacketLengthpacketPayloadrecordTypes"_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:3"_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2""k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"
train_op

Adam""
	iterators

OneShotIterator:0"о
trainable_variablesЦУ

layer_conv1/kernel:0layer_conv1/kernel/Assignlayer_conv1/kernel/read:02/layer_conv1/kernel/Initializer/random_uniform:08
n
layer_conv1/bias:0layer_conv1/bias/Assignlayer_conv1/bias/read:02$layer_conv1/bias/Initializer/zeros:08

layer_conv2/kernel:0layer_conv2/kernel/Assignlayer_conv2/kernel/read:02/layer_conv2/kernel/Initializer/random_uniform:08
n
layer_conv2/bias:0layer_conv2/bias/Assignlayer_conv2/bias/read:02$layer_conv2/bias/Initializer/zeros:08
w
layer_fc1/kernel:0layer_fc1/kernel/Assignlayer_fc1/kernel/read:02-layer_fc1/kernel/Initializer/random_uniform:08
f
layer_fc1/bias:0layer_fc1/bias/Assignlayer_fc1/bias/read:02"layer_fc1/bias/Initializer/zeros:08
s
word_embeddings:0word_embeddings/Assignword_embeddings/read:02,word_embeddings/Initializer/random_uniform:08

rnn/basic_rnn_cell/kernel:0 rnn/basic_rnn_cell/kernel/Assign rnn/basic_rnn_cell/kernel/read:026rnn/basic_rnn_cell/kernel/Initializer/random_uniform:08

rnn/basic_rnn_cell/bias:0rnn/basic_rnn_cell/bias/Assignrnn/basic_rnn_cell/bias/read:02+rnn/basic_rnn_cell/bias/Initializer/zeros:08

layer_rnn_fc_1/kernel:0layer_rnn_fc_1/kernel/Assignlayer_rnn_fc_1/kernel/read:022layer_rnn_fc_1/kernel/Initializer/random_uniform:08
z
layer_rnn_fc_1/bias:0layer_rnn_fc_1/bias/Assignlayer_rnn_fc_1/bias/read:02'layer_rnn_fc_1/bias/Initializer/zeros:08

layer_combine_fc_x/kernel:0 layer_combine_fc_x/kernel/Assign layer_combine_fc_x/kernel/read:026layer_combine_fc_x/kernel/Initializer/random_uniform:08

layer_combine_fc_x/bias:0layer_combine_fc_x/bias/Assignlayer_combine_fc_x/bias/read:02+layer_combine_fc_x/bias/Initializer/zeros:08

layer_combine_fc_y/kernel:0 layer_combine_fc_y/kernel/Assign layer_combine_fc_y/kernel/read:026layer_combine_fc_y/kernel/Initializer/random_uniform:08

layer_combine_fc_y/bias:0layer_combine_fc_y/bias/Assignlayer_combine_fc_y/bias/read:02+layer_combine_fc_y/bias/Initializer/zeros:08"ь"
while_contextк"з"
д"
rnn/while/while_context *rnn/while/LoopCond:02rnn/while/Merge:0:rnn/while/Identity:0Brnn/while/Exit:0Brnn/while/Exit_1:0Brnn/while/Exit_2:0Brnn/while/Exit_3:0Bgradients/f_count_2:0J 
gradients/Add/y:0
gradients/Add:0
gradients/Merge:0
gradients/Merge:1
gradients/NextIteration:0
gradients/Switch:0
gradients/Switch:1
gradients/f_count:0
gradients/f_count_1:0
gradients/f_count_2:0
Vgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
\gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
Vgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
?gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/Enter:0
Egradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/StackPushV2:0
?gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/f_acc:0
=gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/Enter:0
Cgradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/StackPushV2:0
=gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/f_acc:0
6gradients/rnn/while/basic_rnn_cell/concat_grad/Shape:0
=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enter:0
?gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enter_1:0
Cgradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2:0
Egradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/StackPushV2_1:0
=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc:0
?gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc_1:0
rnn/Minimum:0
rnn/TensorArray:0
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
rnn/TensorArray_1:0
rnn/basic_rnn_cell/bias/read:0
 rnn/basic_rnn_cell/kernel/read:0
rnn/strided_slice_1:0
rnn/while/Enter:0
rnn/while/Enter_1:0
rnn/while/Enter_2:0
rnn/while/Enter_3:0
rnn/while/Exit:0
rnn/while/Exit_1:0
rnn/while/Exit_2:0
rnn/while/Exit_3:0
rnn/while/Identity:0
rnn/while/Identity_1:0
rnn/while/Identity_2:0
rnn/while/Identity_3:0
rnn/while/Less/Enter:0
rnn/while/Less:0
rnn/while/Less_1/Enter:0
rnn/while/Less_1:0
rnn/while/LogicalAnd:0
rnn/while/LoopCond:0
rnn/while/Merge:0
rnn/while/Merge:1
rnn/while/Merge_1:0
rnn/while/Merge_1:1
rnn/while/Merge_2:0
rnn/while/Merge_2:1
rnn/while/Merge_3:0
rnn/while/Merge_3:1
rnn/while/NextIteration:0
rnn/while/NextIteration_1:0
rnn/while/NextIteration_2:0
rnn/while/NextIteration_3:0
rnn/while/Switch:0
rnn/while/Switch:1
rnn/while/Switch_1:0
rnn/while/Switch_1:1
rnn/while/Switch_2:0
rnn/while/Switch_2:1
rnn/while/Switch_3:0
rnn/while/Switch_3:1
#rnn/while/TensorArrayReadV3/Enter:0
%rnn/while/TensorArrayReadV3/Enter_1:0
rnn/while/TensorArrayReadV3:0
5rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
rnn/while/add/y:0
rnn/while/add:0
rnn/while/add_1/y:0
rnn/while/add_1:0
(rnn/while/basic_rnn_cell/BiasAdd/Enter:0
"rnn/while/basic_rnn_cell/BiasAdd:0
'rnn/while/basic_rnn_cell/MatMul/Enter:0
!rnn/while/basic_rnn_cell/MatMul:0
rnn/while/basic_rnn_cell/Tanh:0
&rnn/while/basic_rnn_cell/concat/axis:0
!rnn/while/basic_rnn_cell/concat:0~
=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc:0=gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enter:0/
rnn/strided_slice_1:0rnn/while/Less/Enter:0J
rnn/TensorArray:05rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0J
rnn/basic_rnn_cell/bias/read:0(rnn/while/basic_rnn_cell/BiasAdd/Enter:0
?gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/f_acc_1:0?gradients/rnn/while/basic_rnn_cell/concat_grad/ShapeN/Enter_1:0~
=gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/f_acc:0=gradients/rnn/while/basic_rnn_cell/Tanh_grad/TanhGrad/Enter:0i
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0%rnn/while/TensorArrayReadV3/Enter_1:0K
 rnn/basic_rnn_cell/kernel/read:0'rnn/while/basic_rnn_cell/MatMul/Enter:0)
rnn/Minimum:0rnn/while/Less_1/Enter:0
?gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/f_acc:0?gradients/rnn/while/basic_rnn_cell/MatMul_grad/MatMul_1/Enter:0:
rnn/TensorArray_1:0#rnn/while/TensorArrayReadV3/Enter:0А
Vgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0Vgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0Rrnn/while/Enter:0Rrnn/while/Enter_1:0Rrnn/while/Enter_2:0Rrnn/while/Enter_3:0Rgradients/f_count_1:0Zrnn/strided_slice_1:0"W
ready_for_local_init_op<
:
8report_uninitialized_variables_1/boolean_mask/GatherV2:0"
init_op

group_deps_1"
	eval_step

eval_step:0"Z
metric_variablesF
D
accuracy/total:0
accuracy/count:0
mean_1/total:0
mean_1/count:0"ё
local_variablesнк
d
accuracy/total:0accuracy/total/Assignaccuracy/total/read:02"accuracy/total/Initializer/zeros:0
d
accuracy/count:0accuracy/count/Assignaccuracy/count/read:02"accuracy/count/Initializer/zeros:0
\
mean_1/total:0mean_1/total/Assignmean_1/total/read:02 mean_1/total/Initializer/zeros:0
\
mean_1/count:0mean_1/count/Assignmean_1/count/read:02 mean_1/count/Initializer/zeros:0
P
eval_step:0eval_step/Assigneval_step/read:02eval_step/Initializer/zeros:0"!
local_init_op

group_deps_2"ђ4
	variablesф4с4
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0

layer_conv1/kernel:0layer_conv1/kernel/Assignlayer_conv1/kernel/read:02/layer_conv1/kernel/Initializer/random_uniform:08
n
layer_conv1/bias:0layer_conv1/bias/Assignlayer_conv1/bias/read:02$layer_conv1/bias/Initializer/zeros:08

layer_conv2/kernel:0layer_conv2/kernel/Assignlayer_conv2/kernel/read:02/layer_conv2/kernel/Initializer/random_uniform:08
n
layer_conv2/bias:0layer_conv2/bias/Assignlayer_conv2/bias/read:02$layer_conv2/bias/Initializer/zeros:08
w
layer_fc1/kernel:0layer_fc1/kernel/Assignlayer_fc1/kernel/read:02-layer_fc1/kernel/Initializer/random_uniform:08
f
layer_fc1/bias:0layer_fc1/bias/Assignlayer_fc1/bias/read:02"layer_fc1/bias/Initializer/zeros:08
s
word_embeddings:0word_embeddings/Assignword_embeddings/read:02,word_embeddings/Initializer/random_uniform:08

rnn/basic_rnn_cell/kernel:0 rnn/basic_rnn_cell/kernel/Assign rnn/basic_rnn_cell/kernel/read:026rnn/basic_rnn_cell/kernel/Initializer/random_uniform:08

rnn/basic_rnn_cell/bias:0rnn/basic_rnn_cell/bias/Assignrnn/basic_rnn_cell/bias/read:02+rnn/basic_rnn_cell/bias/Initializer/zeros:08

layer_rnn_fc_1/kernel:0layer_rnn_fc_1/kernel/Assignlayer_rnn_fc_1/kernel/read:022layer_rnn_fc_1/kernel/Initializer/random_uniform:08
z
layer_rnn_fc_1/bias:0layer_rnn_fc_1/bias/Assignlayer_rnn_fc_1/bias/read:02'layer_rnn_fc_1/bias/Initializer/zeros:08

layer_combine_fc_x/kernel:0 layer_combine_fc_x/kernel/Assign layer_combine_fc_x/kernel/read:026layer_combine_fc_x/kernel/Initializer/random_uniform:08

layer_combine_fc_x/bias:0layer_combine_fc_x/bias/Assignlayer_combine_fc_x/bias/read:02+layer_combine_fc_x/bias/Initializer/zeros:08

layer_combine_fc_y/kernel:0 layer_combine_fc_y/kernel/Assign layer_combine_fc_y/kernel/read:026layer_combine_fc_y/kernel/Initializer/random_uniform:08

layer_combine_fc_y/bias:0layer_combine_fc_y/bias/Assignlayer_combine_fc_y/bias/read:02+layer_combine_fc_y/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0

layer_conv1/kernel/Adam:0layer_conv1/kernel/Adam/Assignlayer_conv1/kernel/Adam/read:02+layer_conv1/kernel/Adam/Initializer/zeros:0

layer_conv1/kernel/Adam_1:0 layer_conv1/kernel/Adam_1/Assign layer_conv1/kernel/Adam_1/read:02-layer_conv1/kernel/Adam_1/Initializer/zeros:0

layer_conv1/bias/Adam:0layer_conv1/bias/Adam/Assignlayer_conv1/bias/Adam/read:02)layer_conv1/bias/Adam/Initializer/zeros:0

layer_conv1/bias/Adam_1:0layer_conv1/bias/Adam_1/Assignlayer_conv1/bias/Adam_1/read:02+layer_conv1/bias/Adam_1/Initializer/zeros:0

layer_conv2/kernel/Adam:0layer_conv2/kernel/Adam/Assignlayer_conv2/kernel/Adam/read:02+layer_conv2/kernel/Adam/Initializer/zeros:0

layer_conv2/kernel/Adam_1:0 layer_conv2/kernel/Adam_1/Assign layer_conv2/kernel/Adam_1/read:02-layer_conv2/kernel/Adam_1/Initializer/zeros:0

layer_conv2/bias/Adam:0layer_conv2/bias/Adam/Assignlayer_conv2/bias/Adam/read:02)layer_conv2/bias/Adam/Initializer/zeros:0

layer_conv2/bias/Adam_1:0layer_conv2/bias/Adam_1/Assignlayer_conv2/bias/Adam_1/read:02+layer_conv2/bias/Adam_1/Initializer/zeros:0

layer_fc1/kernel/Adam:0layer_fc1/kernel/Adam/Assignlayer_fc1/kernel/Adam/read:02)layer_fc1/kernel/Adam/Initializer/zeros:0

layer_fc1/kernel/Adam_1:0layer_fc1/kernel/Adam_1/Assignlayer_fc1/kernel/Adam_1/read:02+layer_fc1/kernel/Adam_1/Initializer/zeros:0
x
layer_fc1/bias/Adam:0layer_fc1/bias/Adam/Assignlayer_fc1/bias/Adam/read:02'layer_fc1/bias/Adam/Initializer/zeros:0

layer_fc1/bias/Adam_1:0layer_fc1/bias/Adam_1/Assignlayer_fc1/bias/Adam_1/read:02)layer_fc1/bias/Adam_1/Initializer/zeros:0
|
word_embeddings/Adam:0word_embeddings/Adam/Assignword_embeddings/Adam/read:02(word_embeddings/Adam/Initializer/zeros:0

word_embeddings/Adam_1:0word_embeddings/Adam_1/Assignword_embeddings/Adam_1/read:02*word_embeddings/Adam_1/Initializer/zeros:0
Є
 rnn/basic_rnn_cell/kernel/Adam:0%rnn/basic_rnn_cell/kernel/Adam/Assign%rnn/basic_rnn_cell/kernel/Adam/read:022rnn/basic_rnn_cell/kernel/Adam/Initializer/zeros:0
Ќ
"rnn/basic_rnn_cell/kernel/Adam_1:0'rnn/basic_rnn_cell/kernel/Adam_1/Assign'rnn/basic_rnn_cell/kernel/Adam_1/read:024rnn/basic_rnn_cell/kernel/Adam_1/Initializer/zeros:0

rnn/basic_rnn_cell/bias/Adam:0#rnn/basic_rnn_cell/bias/Adam/Assign#rnn/basic_rnn_cell/bias/Adam/read:020rnn/basic_rnn_cell/bias/Adam/Initializer/zeros:0
Є
 rnn/basic_rnn_cell/bias/Adam_1:0%rnn/basic_rnn_cell/bias/Adam_1/Assign%rnn/basic_rnn_cell/bias/Adam_1/read:022rnn/basic_rnn_cell/bias/Adam_1/Initializer/zeros:0

layer_rnn_fc_1/kernel/Adam:0!layer_rnn_fc_1/kernel/Adam/Assign!layer_rnn_fc_1/kernel/Adam/read:02.layer_rnn_fc_1/kernel/Adam/Initializer/zeros:0

layer_rnn_fc_1/kernel/Adam_1:0#layer_rnn_fc_1/kernel/Adam_1/Assign#layer_rnn_fc_1/kernel/Adam_1/read:020layer_rnn_fc_1/kernel/Adam_1/Initializer/zeros:0

layer_rnn_fc_1/bias/Adam:0layer_rnn_fc_1/bias/Adam/Assignlayer_rnn_fc_1/bias/Adam/read:02,layer_rnn_fc_1/bias/Adam/Initializer/zeros:0

layer_rnn_fc_1/bias/Adam_1:0!layer_rnn_fc_1/bias/Adam_1/Assign!layer_rnn_fc_1/bias/Adam_1/read:02.layer_rnn_fc_1/bias/Adam_1/Initializer/zeros:0
Є
 layer_combine_fc_x/kernel/Adam:0%layer_combine_fc_x/kernel/Adam/Assign%layer_combine_fc_x/kernel/Adam/read:022layer_combine_fc_x/kernel/Adam/Initializer/zeros:0
Ќ
"layer_combine_fc_x/kernel/Adam_1:0'layer_combine_fc_x/kernel/Adam_1/Assign'layer_combine_fc_x/kernel/Adam_1/read:024layer_combine_fc_x/kernel/Adam_1/Initializer/zeros:0

layer_combine_fc_x/bias/Adam:0#layer_combine_fc_x/bias/Adam/Assign#layer_combine_fc_x/bias/Adam/read:020layer_combine_fc_x/bias/Adam/Initializer/zeros:0
Є
 layer_combine_fc_x/bias/Adam_1:0%layer_combine_fc_x/bias/Adam_1/Assign%layer_combine_fc_x/bias/Adam_1/read:022layer_combine_fc_x/bias/Adam_1/Initializer/zeros:0
Є
 layer_combine_fc_y/kernel/Adam:0%layer_combine_fc_y/kernel/Adam/Assign%layer_combine_fc_y/kernel/Adam/read:022layer_combine_fc_y/kernel/Adam/Initializer/zeros:0
Ќ
"layer_combine_fc_y/kernel/Adam_1:0'layer_combine_fc_y/kernel/Adam_1/Assign'layer_combine_fc_y/kernel/Adam_1/read:024layer_combine_fc_y/kernel/Adam_1/Initializer/zeros:0

layer_combine_fc_y/bias/Adam:0#layer_combine_fc_y/bias/Adam/Assign#layer_combine_fc_y/bias/Adam/read:020layer_combine_fc_y/bias/Adam/Initializer/zeros:0
Є
 layer_combine_fc_y/bias/Adam_1:0%layer_combine_fc_y/bias/Adam_1/Assign%layer_combine_fc_y/bias/Adam_1/read:022layer_combine_fc_y/bias/Adam_1/Initializer/zeros:0"
ready_op


concat_1:0"J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8фН ћ-       <Aћ	id.M§жAрд*

accuracye?

lossЫБ?ёAP       	q.M§жAрд*A
?
checkpoint_pathB, B&./checkpoints_rnn_cnn/model.ckpt-60000ѕ/Я