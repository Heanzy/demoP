
def Service1(eng):
    eng.lambtype_hr2(nargout=0)

def Service2(eng):
    eng.lambtype_hr2_DJF(nargout=0)

def Service3(eng):
    eng.lambtype_hr2_MAM(nargout=0)

def Service4(eng):
    eng.lambtype_hr2_JJA(nargout=0)

def Service5(eng):
    eng.lambtype_hr2_SON(nargout=0)


if __name__ == "__main__":
    from matlab import engine
    eng = engine.start_matlab()
    eng.cd(r'.\1')
    eng.lambtype_JJA(nargout=0)