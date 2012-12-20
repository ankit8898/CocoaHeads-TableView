#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_130A69B34CE14ECB9701C0C423E2F95B(void *, void *);
void MREP_6783D986FAA54AD89497BCF0942D044C(void *, void *);
void MREP_B31B1C3070C04B6A8C17731743D56B92(void *, void *);
void MREP_273C34406B8148C480441C114B888897(void *, void *);
void MREP_E7A5D1A64E3645159D88613BCD3D8250(void *, void *);
void MREP_EC663732DFDE4AA8ACDD1EC66C1D7ED8(void *, void *);
void MREP_3B74920A96344BE3BBCFE610C6B0B93F(void *, void *);
void MREP_66D084B398D5487395739A0B0A6D61C1(void *, void *);
void MREP_0BA408E7976848EA8A84A8D93695917F(void *, void *);
void MREP_1DEE528CDF45494D8CF4E7E225543956(void *, void *);
void MREP_6123DF9458EE43FA88980CC15E389568(void *, void *);
void MREP_01349A42DF114EF49710AA5C353BF2C1(void *, void *);
void MREP_C1C04C80DBA84C04A6004D3C189E5D8D(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_130A69B34CE14ECB9701C0C423E2F95B(self, 0);
MREP_6783D986FAA54AD89497BCF0942D044C(self, 0);
MREP_B31B1C3070C04B6A8C17731743D56B92(self, 0);
MREP_273C34406B8148C480441C114B888897(self, 0);
MREP_E7A5D1A64E3645159D88613BCD3D8250(self, 0);
MREP_EC663732DFDE4AA8ACDD1EC66C1D7ED8(self, 0);
MREP_3B74920A96344BE3BBCFE610C6B0B93F(self, 0);
MREP_66D084B398D5487395739A0B0A6D61C1(self, 0);
MREP_0BA408E7976848EA8A84A8D93695917F(self, 0);
MREP_1DEE528CDF45494D8CF4E7E225543956(self, 0);
MREP_6123DF9458EE43FA88980CC15E389568(self, 0);
MREP_01349A42DF114EF49710AA5C353BF2C1(self, 0);
MREP_C1C04C80DBA84C04A6004D3C189E5D8D(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
