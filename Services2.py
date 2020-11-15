import matlab.engine

def Service1(eng):
    eng.ts_da_beijing(nargout=0)

def Service2(eng):
    eng.ts_da_beijing_DJF(nargout=0)

def Service3(eng):
    eng.ts_da_beijing_MAM(nargout=0)

def Service4(eng):
    eng.ts_da_beijing_JJA(nargout=0)

def Service5(eng):
    eng.ts_da_beijing_SON(nargout=0)


if __name__ == "__main__":
    eng = matlab.engine.start_matlab()
    eng.cd(r'.\2')
    eng.ts_da_beijing_JJA(nargout=0)