.class Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$SingletonHolder;
.super Ljava/lang/Object;
.source "AppsgeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final HOLDER_INSTANCE:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;-><init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;)V

    sput-object v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$SingletonHolder;->HOLDER_INSTANCE:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
