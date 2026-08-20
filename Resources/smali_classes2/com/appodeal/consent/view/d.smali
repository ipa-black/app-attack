.class public final Lcom/appodeal/consent/view/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/appodeal/consent/view/b;Lcom/appodeal/consent/view/c;)Lcom/appodeal/consent/view/a;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/appodeal/consent/view/a;

    const-string v1, "appContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/appodeal/consent/view/a;-><init>(Landroid/content/Context;)V

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJEAAACRCAYAAADD2FojAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAKwwAACsMBNCkkqwAAABl0RVh0Q29tbWVudABDcmVhdGVkIHdpdGggR0lNUFeBDhcAAAAcdEVYdFNvZnR3YXJlAEFkb2JlIEZpcmV3b3JrcyBDUzbovLKMAAAE1UlEQVR4nO3dva4bRRiH8efwJSj3EqAApYjScBVUiASJ6+IqiKKgVFxFOopISBGXsCURCJnieI4TzrG99rsz+378n9KytVP8tNqdnfHe7HY7lLL00dYDUPETImVOiJQ5IVLmhEiZEyJlToiUOSFS5oRImRMiZU6IlDkhUuaESJkTImVOiJQ5IVLmhEiZEyJlToiUOSFS5oRImftk5MHmeX4MPAGeT9P0z8hjZ26e54+BZ8DbaZpejz7+sDPRHtD3wFfAT/M8fzrq2JnbA/oR+Ab4bp7nb0ePYQii9wDd7D/6EkEy9x6gr9/7eDik7ogeANQSJENHALWGQuqK6ASgliBd0RlArWGQuiFaAKglSBe0EFBrCKSeZ6JHnAfUEqQFXQio9ajTcO7qiegl8McF3xekE10J6E/glz4jOtQN0TRN/wIvECRzFkAj5uO6XlgLkj3vgGDALb4gXV8EQDBoslGQLi8KIBj42EOQlhcJEAx+ii9I54sGCDZYCiJIx4sICDZaTyRI94sKCDZclCZIhyIDgo1XNgpSfEDgYHlsZUgZAIEDRFATUhZA4AQR1IKUCRA4QgQ1IGUDBM4QQW5IGQGBQ0SQE1JWQOAUEeSClBkQOEYEOSBlBwTOEUFsSBUAQQBEEBNSFUAQBBHEglQJEARCBDEgVQMEwRCBb0gVAUFAROATUlVAEBQR+IJUGRAERgQ+IFUHBMERwbaQBOi28IhgG0gCdCgFIhgLSYA+LA0iGANJgO6XChH0hSRAD5cOEfSBJEDHS4kI1oUkQKdLiwjWgSRA57vZ7XZbj6F7BggvuP3zUgE6UQlEcDWkd8DnF3y/HCAohAiuhrS0koAg+TXR/7vyGmlJZQFBMUTQBVJpQFAQEawKqTwgKIoIVoEkQPvKIoI7SL8Cf13407+BlwJ0W2lE+7u1H4AvLvzpZ8DTrfe1eaksohVu911skPRQSUQrzhcJEgURdZhwLA+pFKKOM9alIZVBZHh2trSykEogMjzF/xkH+9q8lx6RcT3QO5xskPRcakRrLCjzsEHSe2kRrbkiUZBOlxJRjyWtgnS8dIh6rokWpIdLhWjEonpBul8aRCN3ZQjSh6VAtMW2HkE6FB7RlvvCBOm20Ig8bCwUpMCIPABqVYcUEpEnQK3KkMIh8gioVRVSKESeAbUqQgqDKAKgVjVIIRBFAtSqBMk9ooiAWlUguUYUGVCrAiS3iDIAamWH5BJRJkCtzJDcIcoIqJUVkitEmQG1MkJyg6gCoFY2SC4QVQLUygRpc0QVAbWyQNoUUWVArQyQNkMkQIeiQ9oEkQDdLzKk4YgE6HhRIQ1FJEDniwhpGCIBWl40SEMQCdDlRYLUHZEAXV8USF0RCZC9CJC6IRKg9fIOqeeZ6CkCtFoWSH1GdKgnojfA0jfyCdCCroT0ptNw7uqGaJqm34FXnIckQBd0IaTfpml63XlIfS+sF0ASoCtaCGkIIBhwi38CkgAZOgNpGCAYNNn4ACQBWqEjkIYCgsFvo57n+THwBHguQOu1n055BrwdDQiKvdJc9Wnz5bEqfkKkzAmRMidEypwQKXNCpMwJkTInRMqcEClzQqTMCZEyJ0TKnBApc0KkzAmRMidEypwQKXNCpMwJkTInRMqcEClzQqTMCZEy9x9PtEuyzhRHVgAAAABJRU5ErkJggg==\n"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/consent/view/a;->setImage(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/appodeal/consent/view/d$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/appodeal/consent/view/d$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/16 p1, 0xa0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x42480000    # 50.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p0, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xb

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static final a(Lcom/appodeal/consent/view/b;)Ljava/lang/String;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "context.packageManager.g\u2026(context.applicationInfo)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "data:image/png;base64,"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onClick"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final b(Lcom/appodeal/consent/view/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    return-object v0
.end method
