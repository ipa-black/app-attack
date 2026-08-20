.class Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;
.super Ljava/lang/Object;
.source "SdkWrapperFactory.java"


# static fields
.field private static final INSTANCE:Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->INSTANCE:Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->map:Ljava/util/HashMap;

    return-void
.end method

.method static getInstance()Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;
    .locals 1

    .line 28
    sget-object v0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->INSTANCE:Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;

    return-object v0
.end method

.method private newInstance(Ljava/lang/String;)Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;
    .locals 1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "APPNEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    new-instance p1, Lcom/appsgeyser/sdk/ads/sdk/AppNextSdkWrapper;

    invoke-direct {p1}, Lcom/appsgeyser/sdk/ads/sdk/AppNextSdkWrapper;-><init>()V

    return-object p1
.end method


# virtual methods
.method getWrapperByKey(Ljava/lang/String;)Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 18
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->newInstance(Ljava/lang/String;)Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create wrapper for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;

    return-object p1
.end method
