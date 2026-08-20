.class public Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;
.super Ljava/lang/Object;
.source "ConfigPhpSdkModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Z

.field private activeByDefault:Z

.field private id:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private textOfPolicy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel$1;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel$1;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->active:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->id:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->activeByDefault:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->textOfPolicy:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->tag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->active:Z

    .line 23
    iput-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->id:Ljava/lang/String;

    .line 24
    iput-boolean p3, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->activeByDefault:Z

    .line 25
    iput-object p4, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->textOfPolicy:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTextOfPolicy()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->textOfPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->active:Z

    return v0
.end method

.method public isActiveByDefault()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->activeByDefault:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->active:Z

    return-void
.end method

.method public setActiveByDefault(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->activeByDefault:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTextOfPolicy(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->textOfPolicy:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 98
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->active:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->activeByDefault:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->textOfPolicy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
