.class final Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi$1;
.super Ljava/lang/Object;
.source "LinePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/os/Parcel;)Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;
    .locals 2

    .line 393
    new-instance v0, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;-><init>(Landroid/os/Parcel;Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$1;)V

    return-object v0
.end method

.method public Qhi(I)[Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;
    .locals 0

    .line 398
    new-array p1, p1, [Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi$1;->Qhi(Landroid/os/Parcel;)Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi$1;->Qhi(I)[Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;

    move-result-object p1

    return-object p1
.end method
