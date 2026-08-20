.class public Lcom/pgl/ssdk/w;
.super Ljava/lang/Object;
.source "VirtualDisplayInfo.java"


# static fields
.field private static volatile a:Landroid/hardware/display/DisplayManager$DisplayListener; = null

.field private static volatile b:Z = false

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Landroid/hardware/display/DisplayManager;


# direct methods
.method private static a(Landroid/view/Display;)Ljava/lang/String;
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "getType"

    invoke-static {p0, v1, v5, v3, v4}, Lcom/pgl/ssdk/J;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getOwnerPackageName"

    invoke-static {p0, v3, v6, v4, v5}, Lcom/pgl/ssdk/J;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v4, "TYPE_VIRTUAL"

    const/4 v5, 0x0

    invoke-static {v5, p0, v4, v5}, Lcom/pgl/ssdk/J;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v1, p0, :cond_0

    const/4 v2, 0x1

    .line 14
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s#%s#%b"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(II)V
    .locals 1

    if-eqz p0, :cond_3

    .line 16
    :try_start_0
    sget-object v0, Lcom/pgl/ssdk/w;->f:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 18
    invoke-static {p0}, Lcom/pgl/ssdk/w;->a(Landroid/view/Display;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-string p0, "pd"

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 19
    :try_start_1
    sget-object p1, Lcom/pgl/ssdk/w;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 20
    sput-object p0, Lcom/pgl/ssdk/w;->e:Ljava/lang/String;

    return-void

    .line 29
    :cond_1
    sget-object p1, Lcom/pgl/ssdk/w;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 30
    sput-object p0, Lcom/pgl/ssdk/w;->d:Ljava/lang/String;

    return-void

    .line 31
    :cond_2
    sget-object p1, Lcom/pgl/ssdk/w;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 32
    sput-object p0, Lcom/pgl/ssdk/w;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .line 43
    sget-object v0, Lcom/pgl/ssdk/w;->c:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    sget-object v0, Lcom/pgl/ssdk/w;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    sget-object v0, Lcom/pgl/ssdk/w;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 47
    sget-object v2, Lcom/pgl/ssdk/w;->f:Landroid/hardware/display/DisplayManager;

    if-nez v2, :cond_0

    const-string v2, "display"

    .line 48
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    sput-object p0, Lcom/pgl/ssdk/w;->f:Landroid/hardware/display/DisplayManager;

    .line 50
    :cond_0
    sget-object p0, Lcom/pgl/ssdk/w;->f:Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_3

    .line 51
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 53
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v0

    .line 54
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 55
    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    .line 58
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/pgl/ssdk/w;->a(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    array-length v4, p0

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_1

    const-string v4, ","

    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, ""

    .line 68
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    return v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/pgl/ssdk/w;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/pgl/ssdk/w;->b:Z

    .line 7
    sget-object v0, Lcom/pgl/ssdk/w;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/pgl/ssdk/w$a;

    invoke-direct {v0}, Lcom/pgl/ssdk/w$a;-><init>()V

    sput-object v0, Lcom/pgl/ssdk/w;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 25
    :cond_1
    sget-object v0, Lcom/pgl/ssdk/w;->f:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_2

    const-string v0, "display"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    sput-object p0, Lcom/pgl/ssdk/w;->f:Landroid/hardware/display/DisplayManager;

    .line 28
    :cond_2
    sget-object p0, Lcom/pgl/ssdk/w;->f:Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_3

    .line 29
    invoke-static {}, Lcom/pgl/ssdk/M;->a()Lcom/pgl/ssdk/M;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pgl/ssdk/M;->c()Lcom/pgl/ssdk/Q;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 30
    sget-object v0, Lcom/pgl/ssdk/w;->f:Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/pgl/ssdk/w;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method
