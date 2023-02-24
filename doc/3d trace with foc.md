


$$
\sigma_{1} = \begin{bmatrix}\sigma_{11}&\sigma_{12}&\sigma_{13}\end{bmatrix}
$$

$$
\sigma_{2} = \begin{bmatrix}\sigma_{12}&\sigma_{22}&\sigma_{23}\end{bmatrix}
$$

$$
\sigma_{3} = \begin{bmatrix}\sigma_{13}&\sigma_{23}&\sigma_{33}\end{bmatrix}
$$

$$
\text{trace}\{
\begin{bmatrix}
\sigma_{11}&\sigma_{21}&\sigma_{31}\\
\sigma_{12}&\sigma_{22}&\sigma_{32}\\
\sigma_{13}&\sigma_{23}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{11}&A_{12}&A_{13}\\
A_{21}&A_{22}&A_{23}\\
A_{31}&A_{32}&A_{33}
\end{bmatrix}
\begin{bmatrix}
\sigma_{11}&\sigma_{12}&\sigma_{13}\\
\sigma_{21}&\sigma_{22}&\sigma_{23}\\
\sigma_{31}&\sigma_{32}&\sigma_{33}\\
\end{bmatrix}
\}
$$



$$
\begin{bmatrix}
\begin{bmatrix}
\sigma_{11}&\sigma_{21}&\sigma_{31}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{11}&\sigma_{21}&\sigma_{31}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{11}&\sigma_{21}&\sigma_{31}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}\\

\begin{bmatrix}
\sigma_{12}&\sigma_{22}&\sigma_{32}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{12}&\sigma_{22}&\sigma_{32}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{12}&\sigma_{22}&\sigma_{32}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}\\

\begin{bmatrix}
\sigma_{13}&\sigma_{23}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{13}&\sigma_{23}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{13}&\sigma_{23}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}\\
\end{bmatrix}
$$

$$
\begin{bmatrix}
\sigma_{11}&\sigma_{12}&\sigma_{13}\\
\sigma_{21}&\sigma_{22}&\sigma_{23}\\
\sigma_{31}&\sigma_{32}&\sigma_{33}\\
\end{bmatrix}
$$




$$
\begin{bmatrix}
\begin{bmatrix}
\sigma_{11}&\sigma_{21}&\sigma_{31}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}
\sigma_{11}
+
\begin{bmatrix}
\sigma_{11}&\sigma_{21}&\sigma_{31}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}
\sigma_{21}
+
\begin{bmatrix}
\sigma_{11}&\sigma_{21}&\sigma_{31}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}
\sigma_{31}
\end{bmatrix}
$$

$$
\sigma_{11}^2A_{11}+\sigma_{21}^2A_{22}+\sigma_{31}^2A_{33}
$$

$$
\sigma_{11}\sigma_{21}A_{21}+\sigma_{11}\sigma_{31}A_{31}
$$

$$
\sigma_{21}\sigma_{11}A_{12}+\sigma_{21}\sigma_{31}A_{32}
$$

$$
\sigma_{31}\sigma_{11}A_{13}+\sigma_{31}\sigma_{21}A_{23}
$$


$$
\begin{bmatrix}
\begin{bmatrix}
\sigma_{12}&\sigma_{22}&\sigma_{32}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}
\sigma_{12}
+
\begin{bmatrix}
\sigma_{12}&\sigma_{22}&\sigma_{32}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}
\sigma_{22}
+
\begin{bmatrix}
\sigma_{12}&\sigma_{22}&\sigma_{32}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}
\sigma_{32}
\end{bmatrix}
$$

$$
\sigma_{12}^2A_{11}+\sigma_{22}^2A_{22}+\sigma_{32}^2A_{33}
$$

$$
\sigma_{12}\sigma_{22}A_{21}+\sigma_{12}\sigma_{32}A_{31}
$$

$$
\sigma_{22}\sigma_{12}A_{12}+\sigma_{22}\sigma_{32}A_{32}
$$

$$
\sigma_{32}\sigma_{12}A_{13}+\sigma_{32}\sigma_{22}A_{23}
$$


$$
\begin{bmatrix}
\begin{bmatrix}
\sigma_{13}&\sigma_{23}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}
\sigma_{13}
+
\begin{bmatrix}
\sigma_{13}&\sigma_{23}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}
\sigma_{23}
+
\begin{bmatrix}
\sigma_{13}&\sigma_{23}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}
\sigma_{33}
\end{bmatrix}
$$

$$
\sigma_{13}^2A_{11}+\sigma_{23}^2A_{22}+\sigma_{33}^2A_{33}
$$

$$
\sigma_{13}\sigma_{23}A_{21}+\sigma_{13}\sigma_{33}A_{31}
$$

$$
\sigma_{23}\sigma_{13}A_{12}+\sigma_{23}\sigma_{33}A_{32}
$$

$$
\sigma_{33}\sigma_{13}A_{13}+\sigma_{33}\sigma_{23}A_{23}
$$










$$
\begin{aligned}
& \left\{\left(\frac{\delta}{1-\rho}\right)\left(c^{1-\rho} \exp [(\rho-1) v]-1\right)\right. \\
& +(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}\left[\Phi_1\left(i_1\right)+\beta_1 z-\eta_1\right] \\
& +\zeta\left(\frac{k_2}{k_a}\right)^{1-\kappa}\left[\Phi_2\left(i_2\right)+\beta_2 z-\eta_2\right]+\left(\frac{z_2}{2}\right) \operatorname{trace}\{\Sigma(\hat{y})\} \\
& +\frac{\partial v}{\partial \hat{y}}\left[\Phi_2\left(i_2\right)-\Phi_1\left(i_1\right)+\left(\beta_2-\beta_1\right) z-\eta_2+\eta_1-\frac{z_2}{2}\left(\left|\sigma_2\right|^2-\left|\sigma_1\right|^2\right)\right]
\end{aligned}
$$



$$
c = \alpha-i_1\left(\frac{k_1}{k_a}\right)-i_2\left(\frac{k_2}{k_a}\right)
$$

$$
\Phi(i)=\frac{1}{\phi} \log (1+\phi i) .
$$


$$
\begin{aligned}
& \left\{\left(\frac{\delta}{1-\rho}\right)c^{1-\rho} \exp [(\rho-1) v]\right. \\
& +(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}\Phi_1\left(i_1\right) \\
& +\zeta\left(\frac{k_2}{k_a}\right)^{1-\kappa}\Phi_2\left(i_2\right)\\
& +\frac{\partial v}{\partial \hat{y}}\left[\Phi_2\left(i_2\right)-\Phi_1\left(i_1\right)\right]
\end{aligned}
$$





$$
\begin{aligned}
& \left(\frac{\delta}{1-\rho}\right) \exp [(\rho-1) v] (1-\rho)c^{-\rho}(-\frac{k_1}{k_a}) \\
& +[(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}-\frac{\partial v}{\partial \hat{y}}]\frac{1}{1+\phi i_1} =0
\end{aligned}
$$



$$
\begin{aligned}
& \left(\frac{\delta}{1-\rho}\right) \exp [(\rho-1) v] (1-\rho)c^{-\rho}(-\frac{k_2}{k_a}) \\
& +[\zeta\left(\frac{k_2}{k_a}\right)^{1-\kappa}+\frac{\partial v}{\partial \hat{y}}]\frac{1}{1+\phi i_2} =0
\end{aligned}
$$



$$
\begin{aligned}
[(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}-\frac{\partial v}{\partial \hat{y}}][(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}-\frac{\partial v}{\partial \hat{y}}]\frac{1}{1+\phi i_1} =\delta \exp [(\rho-1) v] c^{-\rho}(\frac{k_1}{k_a}) 
\end{aligned}
$$

$$
\begin{aligned}
[\zeta\left(\frac{k_2}{k_a}\right)^{1-\kappa}+\frac{\partial v}{\partial \hat{y}}][\zeta\left(\frac{k_2}{k_a}\right)^{1-\kappa}+\frac{\partial v}{\partial \hat{y}}]\frac{1}{1+\phi i_2} = \delta \exp [(\rho-1) v]c^{-\rho}(\frac{k_2}{k_a}) 
\end{aligned}
$$




$$
\begin{aligned}
\frac{(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}-\frac{\partial v}{\partial \hat{y}}}{\zeta\left(\frac{k_2}{k_a}\right)^{1-\kappa}+\frac{\partial v}{\partial \hat{y}}}\frac{1+\phi i_2}{1+\phi i_1} =\frac{k_1}{k_a}\frac{k_a}{k_2}
\end{aligned}
$$

$$
\begin{aligned}\phi i_2=\frac{k_1}{k_a}\frac{k_a}{k_2}(1+\phi i_1)\frac{\zeta\left(\frac{k_2}{k_a}\right)^{1-\kappa}+\frac{\partial v}{\partial \hat{y}}}{(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}-\frac{\partial v}{\partial \hat{y}}}-1
\end{aligned}
$$




$$
c = \alpha-i_1\left(\frac{k_1}{k_a}\right)-\frac{\frac{k_1}{k_a}\frac{k_a}{k_2}(1+\phi i_1)\frac{\zeta\left(\frac{k_2}{k_a}\right)^{1-\kappa}+\frac{\partial v}{\partial \hat{y}}}{(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}-\frac{\partial v}{\partial \hat{y}}}-1}{\phi}\left(\frac{k_2}{k_a}\right)
$$

$$
\begin{aligned}
[(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}-\frac{\partial v}{\partial \hat{y}}][(1-\zeta)\left(\frac{k_1}{k_a}\right)^{1-\kappa}-\frac{\partial v}{\partial \hat{y}}]\frac{1}{1+\phi i_1} =\delta \exp [(\rho-1) v] c^{-\rho}(\frac{k_1}{k_a}) 
\end{aligned}
$$

