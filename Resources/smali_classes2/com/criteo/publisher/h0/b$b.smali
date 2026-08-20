.class Lcom/criteo/publisher/h0/b$b;
.super Lcom/criteo/publisher/h0/b$d;
.source "DfpHeaderBidding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/h0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/reflect/Method;


# instance fields
.field private final c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 347
    const-string v0, "AdMob19"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/criteo/publisher/h0/b$d;-><init>(Ljava/lang/String;Lcom/criteo/publisher/h0/b$a;)V

    .line 348
    iput-object p1, p0, Lcom/criteo/publisher/h0/b$b;->c:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/criteo/publisher/h0/b$a;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/criteo/publisher/h0/b$b;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Z
    .locals 5

    .line 369
    sget-object v0, Lcom/criteo/publisher/h0/b$b;->d:Ljava/lang/Class;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/criteo/publisher/h0/b$b;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 374
    :try_start_0
    const-string v2, "com.google.android.gms.ads.doubleclick.PublisherAdRequest$Builder"

    invoke-static {v2, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/criteo/publisher/h0/b$b;->d:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    const-string v2, "addCustomTargeting"

    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/criteo/publisher/h0/b$b;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 386
    invoke-static {p0}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    :catch_1
    return v0
.end method

.method static a(Ljava/lang/Object;)Z
    .locals 1

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/h0/b$b;->a(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/criteo/publisher/h0/b$b;->d:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 358
    :try_start_0
    sget-object v0, Lcom/criteo/publisher/h0/b$b;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/criteo/publisher/h0/b$b;->c:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 362
    invoke-static {v0}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 360
    invoke-static {v0}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    .line 365
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
