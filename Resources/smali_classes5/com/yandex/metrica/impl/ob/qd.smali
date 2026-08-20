.class public final enum Lcom/yandex/metrica/impl/ob/qd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/qd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/qd;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/qd;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/qd;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/qd;

.field private static final synthetic e:[Lcom/yandex/metrica/impl/ob/qd;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/yandex/metrica/impl/ob/qd;

    const-string v1, "REPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/qd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/qd;->a:Lcom/yandex/metrica/impl/ob/qd;

    new-instance v1, Lcom/yandex/metrica/impl/ob/qd;

    const-string v2, "LOCATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/qd;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/qd;->b:Lcom/yandex/metrica/impl/ob/qd;

    new-instance v2, Lcom/yandex/metrica/impl/ob/qd;

    const-string v3, "STARTUP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/qd;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/metrica/impl/ob/qd;->c:Lcom/yandex/metrica/impl/ob/qd;

    new-instance v3, Lcom/yandex/metrica/impl/ob/qd;

    const-string v4, "DIAGNOSTIC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/qd;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yandex/metrica/impl/ob/qd;->d:Lcom/yandex/metrica/impl/ob/qd;

    filled-new-array {v0, v1, v2, v3}, [Lcom/yandex/metrica/impl/ob/qd;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/qd;->e:[Lcom/yandex/metrica/impl/ob/qd;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qd;
    .locals 1

    const-class v0, Lcom/yandex/metrica/impl/ob/qd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/qd;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/qd;
    .locals 1

    sget-object v0, Lcom/yandex/metrica/impl/ob/qd;->e:[Lcom/yandex/metrica/impl/ob/qd;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/qd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/qd;

    return-object v0
.end method
