import numpy as np
import pandas as pd
import sys
import pickle
import plotly.graph_objects as go
import plotly.offline as pyo
import matplotlib as mpl
import matplotlib.pyplot as plt
import SolveLinSys
from scipy.interpolate import RegularGridInterpolator
from scipy.interpolate import CubicSpline
from matplotlib.backends.backend_pdf import PdfPages
import os
import argparse


mpl.rcParams["savefig.bbox"] = "tight"
mpl.rcParams["figure.figsize"] = (32,30)
mpl.rcParams["font.size"] = 15
mpl.rcParams["legend.frameon"] = False
mpl.style.use('classic')
mpl.rcParams["lines.linewidth"] = 5


import argparse 
sys.stdout.flush()
reporterror = True


parser = argparse.ArgumentParser(description="xi_r values")
parser.add_argument("--rho", type=float)
parser.add_argument("--ell", type=float)
parser.add_argument("--epsilon", type=float)
parser.add_argument("--fraction", type=float)
parser.add_argument("--maxiter", type=float)
parser.add_argument("--dataname",type=str,default="LinearNDInterpolator")
parser.add_argument("--figname",type=str,default="LinearNDInterpolator")

args = parser.parse_args()

rho = args.rho
ell = args.ell
max_iter = args.maxiter
fraction = args.fraction
epsilon = args.epsilon


Data_Dir = "./data/"+args.dataname+"/"

model_simul_dir_post = Data_Dir + "result_ell_{}_rho_{}_eps_{}_frac_{}".format(ell,rho,epsilon,fraction)

res = pickle.load(open(model_simul_dir_post, "rb"))

W1 = res["W1"]
d_star = res["d_star"]
h1_star = res["h1_star"]
hz_star = res["hz_star"]

V0 = res["V0"]

Fig_Dir = "./figure/"+args.figname+"/"

os.makedirs(Fig_Dir, exist_ok=True)

print("max,min={},{}".format(d_star[:,2,2].max(),d_star[:,2,2].min()))

plt.plot(W1,d_star[:,2,2],label="$d$")
plt.legend()
plt.xlabel('z')
plt.title('Investment-Capital Ratio')  
plt.xlim([-0.02, 0.02])
plt.ylim([0.015,0.040])
plt.savefig(Fig_Dir+"d_rho_{}_ell_{}.png".format(rho,ell))
plt.close()


plt.plot(W1,h1_star[:,2,2],label="$h1$")
plt.plot(W1,hz_star[:,2,2],label="$hz$")
plt.legend()
plt.xlabel('z')
plt.title('Distortion')  
plt.xlim([-0.02, 0.02])
plt.ylim([-0.0050, -0.0020])
plt.savefig(Fig_Dir+"h_rho_{}_ell_{}.png".format(rho,ell))
plt.close()

print("d0={}".format(d_star[int(len(W1)/2),2,2]))
print("V0={}".format(V0[int(len(W1)/2),2,2]))

plt.plot(W1,V0[:,2,2],label="V")
plt.legend()
plt.xlabel('z')
plt.title('Value Function')  
plt.xlim([-0.02, 0.02])
plt.savefig(Fig_Dir+"VF_rho_{}_ell_{}.png".format(rho,ell))
plt.close()
