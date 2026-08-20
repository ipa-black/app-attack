.class public Lcom/explorestack/iab/vast/activity/VastView$c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView$c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/explorestack/iab/vast/activity/VastView$c0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/explorestack/iab/vast/activity/VastView$c0;
    .locals 1

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$c0;

    invoke-direct {v0, p1}, Lcom/explorestack/iab/vast/activity/VastView$c0;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/explorestack/iab/vast/activity/VastView$c0;
    .locals 0

    new-array p1, p1, [Lcom/explorestack/iab/vast/activity/VastView$c0;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView$c0$a;->a(Landroid/os/Parcel;)Lcom/explorestack/iab/vast/activity/VastView$c0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView$c0$a;->a(I)[Lcom/explorestack/iab/vast/activity/VastView$c0;

    move-result-object p1

    return-object p1
.end method
