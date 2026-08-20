.class public Lio/bidmachine/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final IMAGE_MIME_TYPES:[Ljava/lang/String;

.field public static final URL_MACROS_AUCTION_PRICE:Ljava/lang/String; = "AUCTION_PRICE"

.field public static final URL_MACROS_AUCTION_SEAT_ID:Ljava/lang/String; = "AUCTION_SEAT_ID"

.field public static final URL_MACROS_BM_ACTION_CODE:Ljava/lang/String; = "BM_ACTION_CODE"

.field public static final URL_MACROS_BM_ACTION_FINISH:Ljava/lang/String; = "BM_ACTION_FINISH"

.field public static final URL_MACROS_BM_ACTION_START:Ljava/lang/String; = "BM_ACTION_START"

.field public static final URL_MACROS_BM_ERROR_REASON:Ljava/lang/String; = "BM_ERROR_REASON"

.field public static final URL_MACROS_BM_EVENT_CODE:Ljava/lang/String; = "BM_EVENT_CODE"

.field public static final VIDEO_LINEARITY:I = 0x1

.field public static final VIDEO_MAXBITR:I = 0x1000

.field public static final VIDEO_MAXDUR:I = 0x1e

.field public static final VIDEO_MIME_TYPES:[Ljava/lang/String;

.field public static final VIDEO_MINBITR:I = 0x38

.field public static final VIDEO_MINDUR:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 10
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "video/mp4"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "video/3gpp"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lio/bidmachine/Constants;->VIDEO_MIME_TYPES:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "image/jpeg"

    aput-object v2, v1, v3

    const-string v2, "image/jpg"

    aput-object v2, v1, v4

    const-string v2, "image/gif"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "image/png"

    aput-object v2, v1, v0

    sput-object v1, Lio/bidmachine/Constants;->IMAGE_MIME_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
