.class public final enum Lcom/yandex/metrica/impl/ob/ui$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/ui$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/ui$b;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/ui$b;

.field private static final synthetic c:[Lcom/yandex/metrica/impl/ob/ui$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ui$b;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ui$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ui$b;->a:Lcom/yandex/metrica/impl/ob/ui$b;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ui$b;

    const-string v2, "CELL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ui$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/ui$b;->b:Lcom/yandex/metrica/impl/ob/ui$b;

    .line 2
    filled-new-array {v0, v1}, [Lcom/yandex/metrica/impl/ob/ui$b;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/yandex/metrica/impl/ob/ui$b;->c:[Lcom/yandex/metrica/impl/ob/ui$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ui$b;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/ui$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/ui$b;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/ui$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/ui$b;->c:[Lcom/yandex/metrica/impl/ob/ui$b;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/ui$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/ui$b;

    return-object v0
.end method
