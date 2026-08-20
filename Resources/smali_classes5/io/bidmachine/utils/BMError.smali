.class public Lio/bidmachine/utils/BMError;
.super Ljava/lang/Object;
.source "BMError.java"


# static fields
.field public static final AlreadyShown:Lio/bidmachine/utils/BMError;

.field public static final BAD_CONTENT:I = 0x65

.field public static final BMServerNoFill:Lio/bidmachine/utils/BMError;

.field public static final DESTROYED:I = 0x6a

.field public static final DUPLICATED:I = 0x6f

.field public static final Destroyed:Lio/bidmachine/utils/BMError;

.field public static final EXPIRED:I = 0x6b

.field public static final Expired:Lio/bidmachine/utils/BMError;

.field public static final HB_NETWORK:I = 0xc8

.field public static final HTTP_BAD_REQUEST:I = 0x6e

.field public static final INTERNAL:I = 0x6c

.field public static final NOT_SET:I = -0x1

.field public static final NO_CONNECTION:I = 0x64

.field public static final NO_CONTENT:I = 0x67

.field public static final NoConnection:Lio/bidmachine/utils/BMError;

.field public static final PLACEHOLDER_TIMEOUT:I = 0xc9

.field public static final PlaceholderTimeout:Lio/bidmachine/utils/BMError;

.field public static final Request:Lio/bidmachine/utils/BMError;

.field public static final RequestDestroyed:Lio/bidmachine/utils/BMError;

.field public static final RequestExpired:Lio/bidmachine/utils/BMError;

.field public static final ResponseDuplicated:Lio/bidmachine/utils/BMError;

.field public static final ResponseExpired:Lio/bidmachine/utils/BMError;

.field public static final SERVER:I = 0x6d

.field public static final Server:Lio/bidmachine/utils/BMError;

.field public static final TIMEOUT:I = 0x66

.field public static final TimeoutError:Lio/bidmachine/utils/BMError;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;

.field private final trackError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x64

    const-string v2, "Can\'t connect to server"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    .line 28
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x66

    const-string v2, "Timeout reached"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    .line 32
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6e

    const-string v2, "Request contains bad syntax or cannot be fulfilled"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Request:Lio/bidmachine/utils/BMError;

    .line 36
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6d

    const-string v2, "Server failed to fulfil an apparently valid request"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Server:Lio/bidmachine/utils/BMError;

    .line 40
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "AdRequest expired, load new one please"

    const/16 v2, 0x6b

    invoke-direct {v0, v2, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->RequestExpired:Lio/bidmachine/utils/BMError;

    .line 44
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "AdRequest destroyed, create new one please"

    const/16 v3, 0x6a

    invoke-direct {v0, v3, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->RequestDestroyed:Lio/bidmachine/utils/BMError;

    .line 48
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "AdResponse expired, load new one please"

    invoke-direct {v0, v2, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->ResponseExpired:Lio/bidmachine/utils/BMError;

    .line 52
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6f

    const-string v4, "AdResponse already was shown"

    invoke-direct {v0, v1, v4}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->ResponseDuplicated:Lio/bidmachine/utils/BMError;

    .line 56
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/4 v1, -0x1

    const-string v4, "Ads was already shown, load new one please"

    invoke-direct {v0, v1, v4}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->AlreadyShown:Lio/bidmachine/utils/BMError;

    .line 60
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "Ads was expired, load new one please"

    invoke-direct {v0, v2, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Expired:Lio/bidmachine/utils/BMError;

    .line 64
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "Ads destroyed, load new one please"

    invoke-direct {v0, v3, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Destroyed:Lio/bidmachine/utils/BMError;

    .line 68
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0xc9

    const-string v2, "Placeholder timeout error"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->PlaceholderTimeout:Lio/bidmachine/utils/BMError;

    .line 110
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "No bid"

    const/4 v2, 0x0

    const/16 v3, 0x67

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lio/bidmachine/utils/BMError;->BMServerNoFill:Lio/bidmachine/utils/BMError;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lio/bidmachine/utils/BMError;->code:I

    .line 123
    iput-object p2, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    .line 124
    iput-boolean p3, p0, Lio/bidmachine/utils/BMError;->trackError:Z

    return-void
.end method

.method public static adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 2

    .line 88
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 1

    .line 100
    const-string v0, "%s not found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0
.end method

.method public static adapterInitialization(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 1

    .line 96
    const-string v0, "Adapter SDK initialization error: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0
.end method

.method public static adapterNotInitialized()Lio/bidmachine/utils/BMError;
    .locals 1

    .line 92
    const-string v0, "Adapter SDK not initialized"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    return-object v0
.end method

.method public static incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 2

    .line 83
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x65

    invoke-direct {v0, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 2

    .line 105
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6c

    invoke-direct {v0, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static noFill()Lio/bidmachine/utils/BMError;
    .locals 3

    .line 74
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x67

    const-string v2, "No ads fill"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 2

    .line 78
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "%s not found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 79
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    check-cast p1, Lio/bidmachine/utils/BMError;

    .line 149
    iget v1, p0, Lio/bidmachine/utils/BMError;->code:I

    iget v2, p1, Lio/bidmachine/utils/BMError;->code:I

    if-eq v1, v2, :cond_2

    return v0

    .line 152
    :cond_2
    iget-object v0, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getCode()I
    .locals 1

    .line 128
    iget v0, p0, Lio/bidmachine/utils/BMError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 157
    iget v0, p0, Lio/bidmachine/utils/BMError;->code:I

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    iget-object v1, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isTrackError()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lio/bidmachine/utils/BMError;->trackError:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    iget v0, p0, Lio/bidmachine/utils/BMError;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%s) %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
