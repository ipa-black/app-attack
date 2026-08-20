.class public final enum Lio/bidmachine/core/NetworkRequest$Method;
.super Ljava/lang/Enum;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/core/NetworkRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

.field public static final enum Get:Lio/bidmachine/core/NetworkRequest$Method;

.field public static final enum Post:Lio/bidmachine/core/NetworkRequest$Method;


# instance fields
.field private final methodString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lio/bidmachine/core/NetworkRequest$Method;

    const/4 v1, 0x0

    const-string v2, "GET"

    const-string v3, "Get"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/core/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    .line 37
    new-instance v1, Lio/bidmachine/core/NetworkRequest$Method;

    const/4 v2, 0x1

    const-string v3, "POST"

    const-string v4, "Post"

    invoke-direct {v1, v4, v2, v3}, Lio/bidmachine/core/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    .line 34
    filled-new-array {v0, v1}, [Lio/bidmachine/core/NetworkRequest$Method;

    move-result-object v0

    sput-object v0, Lio/bidmachine/core/NetworkRequest$Method;->$VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lio/bidmachine/core/NetworkRequest$Method;->methodString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest$Method;
    .locals 1

    .line 34
    const-class v0, Lio/bidmachine/core/NetworkRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/core/NetworkRequest$Method;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/core/NetworkRequest$Method;
    .locals 1

    .line 34
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->$VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

    invoke-virtual {v0}, [Lio/bidmachine/core/NetworkRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/core/NetworkRequest$Method;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/net/URLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 46
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$Method;->methodString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
