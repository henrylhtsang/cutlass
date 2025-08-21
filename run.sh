rm ~/cutlass/output.log
cd ~/cutlass/build

export CUDA_VISIBLE_DEVICES=7
export REF_PRINT_DIFF=1

cmake .. -DCUTLASS_NVCC_ARCHS=100a
CUDA_VISIBLE_DEVICES=7 make test_examples_77_blackwell_fmha_fp16_test_local  2>&1 | tee -a ~/cutlass/output.log
CUDA_VISIBLE_DEVICES=7 make test_examples_77_blackwell_fmha_fp16_test_local_01  2>&1 | tee -a ~/cutlass/output.log
CUDA_VISIBLE_DEVICES=7 make test_examples_77_blackwell_fmha_fp16_test_local_02  2>&1 | tee -a ~/cutlass/output.log
CUDA_VISIBLE_DEVICES=7 make test_examples_77_blackwell_fmha_fp16_test_local_03  2>&1 | tee -a ~/cutlass/output.log
CUDA_VISIBLE_DEVICES=7 make test_examples_77_blackwell_fmha_fp16_test_local_04  2>&1 | tee -a ~/cutlass/output.log
CUDA_VISIBLE_DEVICES=7 make test_examples_77_blackwell_fmha_fp16_test_local_05  2>&1 | tee -a ~/cutlass/output.log

unset CUDA_VISIBLE_DEVICES
unset REF_PRINT_DIFF
