.class public final enum Lcom/yandex/metrica/impl/ob/q$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/q$a;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/q$a;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/q$a;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/q$a;

.field public static final enum e:Lcom/yandex/metrica/impl/ob/q$a;

.field public static final enum f:Lcom/yandex/metrica/impl/ob/q$a;

.field private static final synthetic g:[Lcom/yandex/metrica/impl/ob/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/q$a;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/q$a;->a:Lcom/yandex/metrica/impl/ob/q$a;

    new-instance v1, Lcom/yandex/metrica/impl/ob/q$a;

    const-string v2, "RESUMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/q$a;->b:Lcom/yandex/metrica/impl/ob/q$a;

    new-instance v2, Lcom/yandex/metrica/impl/ob/q$a;

    const-string v3, "PAUSED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/metrica/impl/ob/q$a;->c:Lcom/yandex/metrica/impl/ob/q$a;

    new-instance v3, Lcom/yandex/metrica/impl/ob/q$a;

    const-string v4, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yandex/metrica/impl/ob/q$a;->d:Lcom/yandex/metrica/impl/ob/q$a;

    new-instance v4, Lcom/yandex/metrica/impl/ob/q$a;

    const-string v5, "STOPPED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/yandex/metrica/impl/ob/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/yandex/metrica/impl/ob/q$a;->e:Lcom/yandex/metrica/impl/ob/q$a;

    new-instance v5, Lcom/yandex/metrica/impl/ob/q$a;

    const-string v6, "DESTROYED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/yandex/metrica/impl/ob/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yandex/metrica/impl/ob/q$a;->f:Lcom/yandex/metrica/impl/ob/q$a;

    .line 2
    filled-new-array/range {v0 .. v5}, [Lcom/yandex/metrica/impl/ob/q$a;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/yandex/metrica/impl/ob/q$a;->g:[Lcom/yandex/metrica/impl/ob/q$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/q$a;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/q$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/q$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/q$a;->g:[Lcom/yandex/metrica/impl/ob/q$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/q$a;

    return-object v0
.end method
