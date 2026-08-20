.class Lio/bidmachine/ads/networks/notsy/InternalNotsyData;
.super Ljava/lang/Object;
.source "InternalNotsyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/InternalNotsyData$Factory;
    }
.end annotation


# instance fields
.field private final adUnitId:Ljava/lang/String;

.field private final price:F

.field private final score:F


# direct methods
.method constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->adUnitId:Ljava/lang/String;

    .line 19
    iput p2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->score:F

    .line 20
    iput p3, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->price:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    check-cast p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    .line 51
    iget-object v2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->adUnitId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->score:F

    iget v3, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->score:F

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget p1, p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->price:F

    iget v2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->price:F

    .line 53
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method getPrice()F
    .locals 1

    .line 33
    iget v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->price:F

    return v0
.end method

.method getScore()F
    .locals 1

    .line 29
    iget v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->score:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 58
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->score:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->price:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->adUnitId:Ljava/lang/String;

    iget v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->score:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->price:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "InternalNotsyData(adUnitId - %s, score - %s, price - %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
