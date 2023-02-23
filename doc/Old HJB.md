




$$
\begin{align}
0 &= \max_{d^{(1)}, d^{(2)}}\min_{h}   \frac{\delta}{1-\rho} \left[c^{1-\rho} \exp\left[ \left(\rho-1\right)  v\right] - 1 \right] \\
& \quad\quad + \left[\varphi_1(1-r) + \varphi_2r - \frac{\left[\sigma_1(1-r) + \sigma_2 r\right]^2}{2} +[(1-r)\sigma_1 + r\sigma_2]\cdot h\right]   \\
& \quad\quad + \nu_l(l, z)\left[ \varphi_2 - \varphi_1 - \frac{1}{2}\left(|\sigma_2|^2  - |\sigma_1|^2 \right) + [\sigma_2 - \sigma_1]\cdot h\right]  \\
& \quad\quad + \nu_z(l, z)\left[ -\widehat{\kappa}(z-\bar z) + \sigma_z \cdot h\right] + \frac{1}{2}\text{tr}\left(V_{xx}\sigma\sigma'\right) \\
& \quad\quad + \frac{\ell}{2}\left[|h|^2 - \xi(z)\right] 
\end{align}
$$



$$
\begin{align*}
\text{tr}\left(V_{xx}\sigma\sigma'\right) &= (.01)^2|\sigma_2-\sigma_1|^2 \nu_{ll}(l, z) +  2 (.01)\left([\sigma_2 - \sigma_1]\cdot \sigma_z\right)\nu_{lz}(l, z) +  |\sigma_z|^2 \nu_{zz}(l, z).
\end{align*}
$$

$$
\begin{align*}
\sigma(X_t) \doteq \begin{bmatrix}
(.01)\left(\sigma'_1(1-R_t) + \sigma'_2 R_t\right) \\
(.01)[\sigma_2-\sigma_1]' \\
\sigma'_z
\end{bmatrix} .
\end{align*}
$$

$$
\begin{align}
\frac{\delta(1-r)}{(1-r)(\mathcal A_1 - d^{(1)}(l, z))+r(\mathcal A_2 - d^{(2)}(l, z))} &= \left(1-\phi_1d^{(1)}(l, z)\right)\left[1 - r - \nu_l(l, z)\right] \label{eq:d1_opt} \\
\frac{\delta r}{(1-r)(\mathcal A_1 - d^{(1)}(l, z))+r(\mathcal A_2 - d^{(2)}(l, z))} &= \left(1-\phi_2d^{(2)}(l, z)\right)\left[r + \nu_l(l, z)\right] \label{eq:d2_opt} \\
h(l, z, \ell^*) &= - \frac{1}{\ell^*} \sigma'(r)\begin{bmatrix}
1 \\
\nu_l(l, z) \\
\nu_z(l, z)
\end{bmatrix} . \label{eq:h}
\end{align}
$$

$$
r= \frac{\exp \left(l\right)}{\left(1+\exp \left(l\right)\right)}
$$

$$
c = (1-r)\left(\mathcal A_1 - d^{(1)}\right) + r\left(\mathcal A_2 - d^{(2)}\right) 
$$

$$
\begin{align*}
R_t \doteq \frac{K^{(2)}_t}{K^{(1)}_t+ K^{(2)}_t} = \frac{K^{(2)}_t}{K_t} \in [0, 1].
\end{align*}
$$

$$
R_t=\frac{\exp(L_t)}{1+\exp(L_t)}
$$



$$
\begin{align*}
X_t \doteq \left[\log K_t, \ L_t, \ Z_t-\bar{z}\right]' \quad\quad \log K_t \doteq \log\left(K^{(1)}_t+ K^{(2)}_t\right)\quad\quad L_t \doteq \log K^{(2)}_t - \log K^{(1)}_t
\end{align*}
$$


