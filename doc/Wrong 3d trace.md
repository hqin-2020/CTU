




$$
\sigma_{1} = \begin{bmatrix}\sigma_{11}&\sigma_{12}&\sigma_{13}\end{bmatrix}
$$

$$
\sigma_{2} = \begin{bmatrix}\sigma_{12}&\sigma_{22}&\sigma_{23}\end{bmatrix}
$$

$$
\text{trace}\{\begin{bmatrix}
\sigma_{11}&\sigma_{12}&\sigma_{13}\\
\sigma_{21}&\sigma_{22}&\sigma_{23}\\
\sigma_{31}&\sigma_{32}&\sigma_{33}\\
\end{bmatrix}
\begin{bmatrix}
A_{11}&A_{12}&A_{13}\\
A_{21}&A_{22}&A_{23}\\
A_{31}&A_{32}&A_{33}
\end{bmatrix}
\begin{bmatrix}
\sigma_{11}&\sigma_{21}&\sigma_{31}\\
\sigma_{12}&\sigma_{22}&\sigma_{32}\\
\sigma_{13}&\sigma_{23}&\sigma_{33}
\end{bmatrix}\}
$$

$$
\begin{bmatrix}
\begin{bmatrix}
\sigma_{11}&\sigma_{12}&\sigma_{13}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{11}&\sigma_{12}&\sigma_{13}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{11}&\sigma_{12}&\sigma_{13}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}\\

\begin{bmatrix}
\sigma_{21}&\sigma_{22}&\sigma_{23}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{21}&\sigma_{22}&\sigma_{23}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{21}&\sigma_{22}&\sigma_{23}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}\\

\begin{bmatrix}
\sigma_{31}&\sigma_{32}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{31}&\sigma_{32}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}

&
\begin{bmatrix}
\sigma_{31}&\sigma_{32}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}\\
\end{bmatrix}
$$

$$
\begin{bmatrix}
\sigma_{11}&\sigma_{21}&\sigma_{31}\\
\sigma_{12}&\sigma_{22}&\sigma_{32}\\
\sigma_{13}&\sigma_{23}&\sigma_{33}
\end{bmatrix}
$$




$$
\begin{bmatrix}
\begin{bmatrix}
\sigma_{11}&\sigma_{12}&\sigma_{13}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}
\sigma_{11}
+
\begin{bmatrix}
\sigma_{11}&\sigma_{12}&\sigma_{13}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}
\sigma_{12}
+
\begin{bmatrix}
\sigma_{11}&\sigma_{12}&\sigma_{13}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}
\sigma_{13}
\end{bmatrix}
$$

$$
\sigma_{11}^2A_{11}+\sigma_{12}^2A_{22}+\sigma_{13}^2A_{33}
$$

$$
\sigma_{11}\sigma_{12}A_{21}+\sigma_{11}\sigma_{13}A_{31}
$$

$$
\sigma_{12}\sigma_{11}A_{12}+\sigma_{12}\sigma_{13}A_{32}
$$

$$
\sigma_{13}\sigma_{11}A_{13}+\sigma_{13}\sigma_{12}A_{23}
$$


$$
\begin{bmatrix}
\begin{bmatrix}
\sigma_{21}&\sigma_{22}&\sigma_{23}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}
\sigma_{21}
+
\begin{bmatrix}
\sigma_{21}&\sigma_{22}&\sigma_{23}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}
\sigma_{22}
+
\begin{bmatrix}
\sigma_{21}&\sigma_{22}&\sigma_{23}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}
\sigma_{23}
\end{bmatrix}
$$

$$
\sigma_{21}^2A_{11}+\sigma_{22}^2A_{22}+\sigma_{23}^2A_{33}
$$

$$
\sigma_{21}\sigma_{22}A_{21}+\sigma_{21}\sigma_{21}A_{31}
$$

$$
\sigma_{22}\sigma_{21}A_{12}+\sigma_{22}\sigma_{23}A_{32}
$$

$$
\sigma_{23}\sigma_{21}A_{13}+\sigma_{23}\sigma_{22}A_{23}
$$




$$
\begin{bmatrix}
\begin{bmatrix}
\sigma_{31}&\sigma_{32}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{11}\\A_{21}\\A_{31}
\end{bmatrix}
\sigma_{31}
+
\begin{bmatrix}
\sigma_{31}&\sigma_{32}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{12}\\A_{22}\\A_{32}
\end{bmatrix}
\sigma_{32}
+
\begin{bmatrix}
\sigma_{31}&\sigma_{32}&\sigma_{33}
\end{bmatrix}
\begin{bmatrix}
A_{13}\\A_{23}\\A_{33}
\end{bmatrix}
\sigma_{33}
\end{bmatrix}
$$

$$
\sigma_{31}^2A_{11}+\sigma_{32}^2A_{22}+\sigma_{33}^2A_{33}
$$

$$
\sigma_{31}\sigma_{32}A_{21}+\sigma_{31}\sigma_{33}A_{31}
$$

$$
\sigma_{32}\sigma_{31}A_{12}+\sigma_{32}\sigma_{33}A_{32}
$$

$$
\sigma_{33}\sigma_{31}A_{13}+\sigma_{33}\sigma_{32}A_{23}
$$





