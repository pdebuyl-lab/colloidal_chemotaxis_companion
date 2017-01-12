
RUN=test
EPS=1.00

passive_sphere_EPS$(EPS)_RUN$(RUN):
	mkdir passive_sphere_EPS$(EPS)_RUN$(RUN)

passive_sphere: passive_sphere_EPS$(EPS)_RUN$(RUN)/passive_sphere.h5

passive_sphere_EPS$(EPS)_RUN$(RUN)/passive_sphere.h5: passive_sphere.p | passive_sphere_EPS$(EPS)_RUN$(RUN)
	sftmpl passive_sphere.p --EPS $(EPS) > passive_sphere_EPS$(EPS)_RUN$(RUN)/passive_sphere.p
	(cd passive_sphere_EPS$(EPS)_RUN$(RUN) ; rmpcdmd run chemotactic_cell passive_sphere.p passive_sphere.h5 auto)

active_sphere_EPS$(EPS)_RUN$(RUN):
	mkdir active_sphere_EPS$(EPS)_RUN$(RUN)

active_sphere: active_sphere_EPS$(EPS)_RUN$(RUN)/active_sphere.h5

active_sphere_EPS$(EPS)_RUN$(RUN)/active_sphere.h5: active_sphere.p | active_sphere_EPS$(EPS)_RUN$(RUN)
	sftmpl active_sphere.p --EPS $(EPS) > active_sphere_EPS$(EPS)_RUN$(RUN)/active_sphere.p
	(cd active_sphere_EPS$(EPS)_RUN$(RUN) ; rmpcdmd run chemotactic_cell active_sphere.p active_sphere.h5 auto)

nanomotor_EPS$(EPS)_RUN$(RUN):
	mkdir nanomotor_EPS$(EPS)_RUN$(RUN)

nanomotor: nanomotor_EPS$(EPS)_RUN$(RUN)/nanomotor.h5

nanomotor_EPS$(EPS)_RUN$(RUN)/nanomotor.h5: nanomotor.p | nanomotor_EPS$(EPS)_RUN$(RUN)
	sftmpl nanomotor.p --EPS $(EPS) > nanomotor_EPS$(EPS)_RUN$(RUN)/nanomotor.p
	(cd nanomotor_EPS$(EPS)_RUN$(RUN) ; rmpcdmd run chemotactic_cell nanomotor.p nanomotor.h5 auto)

