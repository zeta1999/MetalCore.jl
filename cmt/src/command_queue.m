#include "impl/common.h"
#include "cmt/command_queue.h"

CF_RETURNS_RETAINED
MT_EXPORT
MtCommandQueue*
mtNewCommandQueue(MtDevice *device) {
  return [(id<MTLDevice>)device newCommandQueue];
}

CF_RETURNS_RETAINED
MT_EXPORT
MtCommandQueue*
mtNewCommandQueueWithMaxCommandBufferCount(MtDevice *device, NsUInteger count) {
  return [(id<MTLDevice>)device newCommandQueueWithMaxCommandBufferCount: count];
}

MT_EXPORT
void
mtCommandQueueRelease(MtCommandQueue *queue) {
  [(id<MTLCommandQueue>)queue release];
}

