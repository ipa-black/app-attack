.class Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;
.super Landroid/view/View$BaseSavedState;
.source "LinePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Qhi"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Qhi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 390
    new-instance v0, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi$1;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi$1;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 379
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;->Qhi:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$1;)V
    .locals 0

    .line 371
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 385
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 386
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/swiper/indicator/LinePageIndicator$Qhi;->Qhi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
