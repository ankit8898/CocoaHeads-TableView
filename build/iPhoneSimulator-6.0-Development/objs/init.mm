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
void MREP_6581CB07865E4712A07A07F012976F7C(void *, void *);
void MREP_09DCB412B67641DD9F953A0704CDF119(void *, void *);
void MREP_4C2D015E704B4654BC769AD9D73A8A45(void *, void *);
void MREP_BAA23349987343CE8E91E0049C81098B(void *, void *);
void MREP_40D3316047874BB78D1334D66067C2B0(void *, void *);
void MREP_338CAE7AA8CD4EBC91A09F1AE5245937(void *, void *);
void MREP_1B042FFA38414531ACCCF2E1D7E1ED33(void *, void *);
void MREP_77C0D8CE5A8749249CF3A1046F25827B(void *, void *);
void MREP_70092CA051EF497985D2EA1B7EA3C673(void *, void *);
void MREP_22A70058B571450486DF2ACD1CFE535D(void *, void *);
void MREP_79E60725C4CD4336A724AA53B0967BA9(void *, void *);
void MREP_74FDC71275D141D188910B98826A13B2(void *, void *);
void MREP_A8A88B6FE4844CA9B77075013F056ED7(void *, void *);
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
MREP_6581CB07865E4712A07A07F012976F7C(self, 0);
MREP_09DCB412B67641DD9F953A0704CDF119(self, 0);
MREP_4C2D015E704B4654BC769AD9D73A8A45(self, 0);
MREP_BAA23349987343CE8E91E0049C81098B(self, 0);
MREP_40D3316047874BB78D1334D66067C2B0(self, 0);
MREP_338CAE7AA8CD4EBC91A09F1AE5245937(self, 0);
MREP_1B042FFA38414531ACCCF2E1D7E1ED33(self, 0);
MREP_77C0D8CE5A8749249CF3A1046F25827B(self, 0);
MREP_70092CA051EF497985D2EA1B7EA3C673(self, 0);
MREP_22A70058B571450486DF2ACD1CFE535D(self, 0);
MREP_79E60725C4CD4336A724AA53B0967BA9(self, 0);
MREP_74FDC71275D141D188910B98826A13B2(self, 0);
MREP_A8A88B6FE4844CA9B77075013F056ED7(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
