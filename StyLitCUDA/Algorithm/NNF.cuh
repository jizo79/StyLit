#ifndef NNF_H_
#define NNF_H_

#include "../Utilities/Image.cuh"
#include "../Utilities/PyramidImage.cuh"
#include "NNFEntry.h"
#include "PCG.cuh"

namespace StyLitCUDA {
namespace NNF {

template <typename T>
void randomize(Image<NNFEntry> &nnf, Image<PCGState> &random, const Image<T> &from,
               const Image<T> &to, const int patchSize);

/**
 * @brief upscale Upscales the given NNF by a factor of two.
 * @param from the NNF to read from (1x size)
 * @param to the NNF to write to (2x size)
 */
void upscale(const Image<NNFEntry> &from, Image<NNFEntry> &to, const int patchSize);

} /* namespace NNF */
} /* namespace StyLitCUDA */

#endif /* NNF_H_ */
