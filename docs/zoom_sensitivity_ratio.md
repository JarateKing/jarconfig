# zoom_sensitivity_ratio

* clientside convar
* default value: 1

Used to change the player's sensitivity when they scope.

## Ideal Value

### cm/360 vs cm/px

If you've never thought about it, why do we measure sensitivity with cm/360 (or inches/360) instead of with cm per however many pixels on the screen (which I'll call cm/px from here on out)? Measuring it by angles is fine, but I care more about how much my mouse movement translates to distance on my screen. It's not only more intuitive, it's also more meaningful--I have no clue what a 5 degree movement looks like, but I have a pretty good idea how big 100px is.

The answer to that is two things. First is that different resolutions will have different cm/px values when using the same sensitivity, but we don't really care about that here. The second (that we do care about) is that in any non-orthographic 3d game, our cm/px depends on where we're looking at on the screen. In other words, our cm/px is not uniform.

![comparison at 90 fov](docs\images\zoom_sensitivity_ratio\20deg_90fov.png "90 fov")

And even more importantly, how much it differs depends on your fov.

![comparison at 75 fov](docs\images\zoom_sensitivity_ratio\20deg_75fov.png "75 fov")

What this all means is that it's very easy to keep the same cm/360 between different fov's. It is not so easy to keep the same cm/px between different fov's. The best you can do is adjust your sensitivity so it keeps the same cm/px at a certain point.

### Values

The above section matters a lot because scoping in the source engine works by changing your fov. In tf2, the sniper rifle sets your fov to 20 when scoped. If we want our sensitivity to seem consistent when we scope, we're going to have to change our sensitivity.

Fortunately zoom_sensitivity_ratio already does most of the work. Unfortunately its default value of 1 isn't what most people want--zoom_sensitivity_ratio 1 makes your cm/px equal at the 4:3 screen edge (if your aspect ratio is larger than 4:3, it's just where the screen would end if it was 4:3).

Without going too deeply into the math, here's a table of all the values (that I can think of) that you might want:

Reference point | equal cm/360 | 1366x768 edge | 16:9 edge | 16:10 edge | 4:3 edge | 5:4 edge | 1:1 edge | Scope edge (970/1080) | Crosshair / center
--------------- | ------------ | ------------- | --------- | ---------- | -------- | -------- | -------- | ---------- | ----------------
fov_desired 90 | 4.5 | 1.12080641536405 | 1.120561718921692 | 1.07107708971804 | 1.0 | 0.978837355604142 | 0.919454979083722 | 0.897441501953594 | 0.793471413188092
fov_desired 75 | 3.75 | 1.08688973937640 | 1.086710640801986 | 1.05073139721689 | 1.0 | 0.985145215931445 | 0.944183362111199 | 0.929300460826708 | 0.861726731909075

The safest / what most people like to use is the crosshair / center option.