.class public Lcom/explorestack/iab/vast/activity/VastView$c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c0"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/explorestack/iab/vast/activity/VastView$c0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:F

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$c0$a;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/activity/VastView$c0$a;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->a:Ljava/lang/String;

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->c:I

    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->d:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->e:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->i:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->k:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->l:Z

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->m:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->a:Ljava/lang/String;

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->c:I

    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->d:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->e:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->i:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->k:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->l:Z

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->m:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->n:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->e:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v0

    :goto_5
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    move v2, v0

    :goto_6
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    move v2, v0

    :goto_7
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    move v2, v0

    :goto_8
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->m:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->n:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->e:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->i:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->l:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->m:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$c0;->n:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
