.class public final enum Lcom/yandex/metrica/CounterConfiguration$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/CounterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/CounterConfiguration$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/yandex/metrica/CounterConfiguration$b;

.field public static final enum c:Lcom/yandex/metrica/CounterConfiguration$b;

.field public static final enum d:Lcom/yandex/metrica/CounterConfiguration$b;

.field public static final enum e:Lcom/yandex/metrica/CounterConfiguration$b;

.field public static final enum f:Lcom/yandex/metrica/CounterConfiguration$b;

.field public static final enum g:Lcom/yandex/metrica/CounterConfiguration$b;

.field public static final enum h:Lcom/yandex/metrica/CounterConfiguration$b;

.field private static final synthetic i:[Lcom/yandex/metrica/CounterConfiguration$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$b;

    const/4 v1, 0x0

    const-string v2, "main"

    const-string v3, "MAIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/CounterConfiguration$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration$b;->b:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 2
    new-instance v1, Lcom/yandex/metrica/CounterConfiguration$b;

    const/4 v2, 0x1

    const-string v3, "manual"

    const-string v4, "MANUAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/yandex/metrica/CounterConfiguration$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/CounterConfiguration$b;->c:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 3
    new-instance v2, Lcom/yandex/metrica/CounterConfiguration$b;

    const/4 v3, 0x2

    const-string v4, "appmetrica"

    const-string v5, "APPMETRICA"

    invoke-direct {v2, v5, v3, v4}, Lcom/yandex/metrica/CounterConfiguration$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/yandex/metrica/CounterConfiguration$b;->d:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 4
    new-instance v3, Lcom/yandex/metrica/CounterConfiguration$b;

    const/4 v4, 0x3

    const-string v5, "commutation"

    const-string v6, "COMMUTATION"

    invoke-direct {v3, v6, v4, v5}, Lcom/yandex/metrica/CounterConfiguration$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/yandex/metrica/CounterConfiguration$b;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 5
    new-instance v4, Lcom/yandex/metrica/CounterConfiguration$b;

    const/4 v5, 0x4

    const-string v6, "self_diagnostic_main"

    const-string v7, "SELF_DIAGNOSTIC_MAIN"

    invoke-direct {v4, v7, v5, v6}, Lcom/yandex/metrica/CounterConfiguration$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/yandex/metrica/CounterConfiguration$b;->f:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 6
    new-instance v5, Lcom/yandex/metrica/CounterConfiguration$b;

    const/4 v6, 0x5

    const-string v7, "self_diagnostic_manual"

    const-string v8, "SELF_DIAGNOSTIC_MANUAL"

    invoke-direct {v5, v8, v6, v7}, Lcom/yandex/metrica/CounterConfiguration$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/yandex/metrica/CounterConfiguration$b;->g:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 7
    new-instance v6, Lcom/yandex/metrica/CounterConfiguration$b;

    const/4 v7, 0x6

    const-string v8, "crash"

    const-string v9, "CRASH"

    invoke-direct {v6, v9, v7, v8}, Lcom/yandex/metrica/CounterConfiguration$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/yandex/metrica/CounterConfiguration$b;->h:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lcom/yandex/metrica/CounterConfiguration$b;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/yandex/metrica/CounterConfiguration$b;->i:[Lcom/yandex/metrica/CounterConfiguration$b;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/yandex/metrica/CounterConfiguration$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/CounterConfiguration$b;
    .locals 4

    .line 2
    invoke-static {}, Lcom/yandex/metrica/CounterConfiguration$b;->values()[Lcom/yandex/metrica/CounterConfiguration$b;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 3
    iget-object v3, v2, Lcom/yandex/metrica/CounterConfiguration$b;->a:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/yandex/metrica/CounterConfiguration$b;->b:Lcom/yandex/metrica/CounterConfiguration$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/CounterConfiguration$b;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/CounterConfiguration$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/CounterConfiguration$b;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/CounterConfiguration$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$b;->i:[Lcom/yandex/metrica/CounterConfiguration$b;

    invoke-virtual {v0}, [Lcom/yandex/metrica/CounterConfiguration$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/CounterConfiguration$b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration$b;->a:Ljava/lang/String;

    return-object v0
.end method
