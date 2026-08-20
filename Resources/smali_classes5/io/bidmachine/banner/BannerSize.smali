.class public final enum Lio/bidmachine/banner/BannerSize;
.super Ljava/lang/Enum;
.source "BannerSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/banner/BannerSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/banner/BannerSize;

.field public static final enum Size_300x250:Lio/bidmachine/banner/BannerSize;

.field public static final enum Size_320x50:Lio/bidmachine/banner/BannerSize;

.field public static final enum Size_728x90:Lio/bidmachine/banner/BannerSize;


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lio/bidmachine/banner/BannerSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "Size_320x50"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/banner/BannerSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/bidmachine/banner/BannerSize;->Size_320x50:Lio/bidmachine/banner/BannerSize;

    .line 6
    new-instance v1, Lio/bidmachine/banner/BannerSize;

    const/16 v2, 0x12c

    const/16 v3, 0xfa

    const-string v4, "Size_300x250"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lio/bidmachine/banner/BannerSize;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    .line 7
    new-instance v2, Lio/bidmachine/banner/BannerSize;

    const/16 v3, 0x2d8

    const/16 v4, 0x5a

    const-string v5, "Size_728x90"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lio/bidmachine/banner/BannerSize;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lio/bidmachine/banner/BannerSize;->Size_728x90:Lio/bidmachine/banner/BannerSize;

    .line 3
    filled-new-array {v0, v1, v2}, [Lio/bidmachine/banner/BannerSize;

    move-result-object v0

    sput-object v0, Lio/bidmachine/banner/BannerSize;->$VALUES:[Lio/bidmachine/banner/BannerSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lio/bidmachine/banner/BannerSize;->width:I

    .line 14
    iput p4, p0, Lio/bidmachine/banner/BannerSize;->height:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/banner/BannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/banner/BannerSize;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/banner/BannerSize;->$VALUES:[Lio/bidmachine/banner/BannerSize;

    invoke-virtual {v0}, [Lio/bidmachine/banner/BannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/banner/BannerSize;

    return-object v0
.end method
