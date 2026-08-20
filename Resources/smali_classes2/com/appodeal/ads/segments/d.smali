.class public final Lcom/appodeal/ads/segments/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/appodeal/ads/segments/i;->d:I

    invoke-static {v0}, Lcom/appodeal/ads/m;->a(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Lcom/appodeal/ads/utils/Version;

    check-cast p1, Lcom/appodeal/ads/utils/Version;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/utils/Version;->compareTo(Lcom/appodeal/ads/utils/Version;)I

    move-result p0

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public static b(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Lcom/appodeal/ads/segments/i;->d:I

    invoke-static {v0}, Lcom/appodeal/ads/m;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x31

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 2
    :cond_2
    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    .line 3
    array-length v0, p0

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v4, p0, v2

    invoke-virtual {v4, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_2
    return v1

    .line 4
    :cond_5
    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .line 5
    array-length v0, p0

    move v2, v3

    :goto_3
    if-ge v2, v0, :cond_7

    aget-object v4, p0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_4
    return v1

    .line 6
    :cond_8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/appodeal/ads/segments/i;->d:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p0, p1, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Lcom/appodeal/ads/utils/Version;

    check-cast p1, Lcom/appodeal/ads/utils/Version;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/utils/Version;->compareTo(Lcom/appodeal/ads/utils/Version;)I

    move-result p0

    if-lez p0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public static d(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/appodeal/ads/segments/d;->a(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/appodeal/ads/segments/d;->c(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static e(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/appodeal/ads/segments/i;->d:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    rem-float/2addr p1, p0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    rem-int/2addr p1, p0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    return v3
.end method

.method public static f(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/appodeal/ads/segments/i;->d:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    check-cast p0, Lcom/appodeal/ads/utils/Version;

    check-cast p1, Lcom/appodeal/ads/utils/Version;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/utils/Version;->compareTo(Lcom/appodeal/ads/utils/Version;)I

    move-result p0

    if-gez p0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public static g(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/appodeal/ads/segments/d;->a(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/appodeal/ads/segments/d;->f(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
