#if canImport(Combine)
import Combine
public typealias CombineScheduler = Combine.Scheduler

#else
import OpenCombine
public typealias CombineScheduler = OpenCombine.Scheduler
#endif