static long setup_perf(__u32 type, __u64 config){
	
	struct perf_event_attr event;
	memset(&event, 0, sizeof(struct perf_event_attr));
	event.type = type;
	event.size = sizeof(struct perf_event_attr);
	event.config = config;
	event.disabled = 1;
	event.exclude_kernel = 1;
	event.exclude_hv = 1;
	return syscall(__NR_perf_event_open, &event, 0, -1, -1, 0);
}
static long setup_perf_cache(__u64 cache_id, __u64 op_id, __u64 result_id){
	
	struct perf_event_attr event;
	memset(&event, 0, sizeof(struct perf_event_attr));
	event.type = PERF_TYPE_HW_CACHE;
	event.size = sizeof(struct perf_event_attr);
	event.config = (cache_id) | (op_id << 8) | (result_id << 16);
	event.disabled = 1;
	event.exclude_kernel = 1;
	event.exclude_hv = 1;
	return syscall(__NR_perf_event_open, &event, 0, -1, -1, 0);
}
static void start_perf(int perf){
	ioctl(perf, PERF_EVENT_IOC_RESET, 0);
	ioctl(perf, PERF_EVENT_IOC_ENABLE, 0);
}
static void end_perf(int perf){
	ioctl(perf, PERF_EVENT_IOC_DISABLE, 0);
}
static void print_perf(int perf){
	long long result;
	read(perf, &result, sizeof(long long));
	printf("Performance counter result: %lld \n", result);
}