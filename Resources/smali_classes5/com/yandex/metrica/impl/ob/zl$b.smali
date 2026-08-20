.class public final enum Lcom/yandex/metrica/impl/ob/zl$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/zl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/zl$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/yandex/metrica/impl/ob/zl$b;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/zl$b;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/zl$b;

.field public static final enum e:Lcom/yandex/metrica/impl/ob/zl$b;

.field private static final synthetic f:[Lcom/yandex/metrica/impl/ob/zl$b;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/zl$b;

    const-string v1, "EQUALS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yandex/metrica/impl/ob/zl$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/zl$b;->b:Lcom/yandex/metrica/impl/ob/zl$b;

    new-instance v1, Lcom/yandex/metrica/impl/ob/zl$b;

    const-string v2, "CONTAINS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/yandex/metrica/impl/ob/zl$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/zl$b;->c:Lcom/yandex/metrica/impl/ob/zl$b;

    new-instance v2, Lcom/yandex/metrica/impl/ob/zl$b;

    const-string v3, "MATCHES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/yandex/metrica/impl/ob/zl$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/yandex/metrica/impl/ob/zl$b;->d:Lcom/yandex/metrica/impl/ob/zl$b;

    new-instance v3, Lcom/yandex/metrica/impl/ob/zl$b;

    const-string v4, "DOES_NOT_MATCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/yandex/metrica/impl/ob/zl$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/yandex/metrica/impl/ob/zl$b;->e:Lcom/yandex/metrica/impl/ob/zl$b;

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Lcom/yandex/metrica/impl/ob/zl$b;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/yandex/metrica/impl/ob/zl$b;->f:[Lcom/yandex/metrica/impl/ob/zl$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/yandex/metrica/impl/ob/zl$b;->a:I

    return-void
.end method

.method public static a(I)Lcom/yandex/metrica/impl/ob/zl$b;
    .locals 4

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/zl$b;->values()[Lcom/yandex/metrica/impl/ob/zl$b;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    iget v3, v2, Lcom/yandex/metrica/impl/ob/zl$b;->a:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p0, Lcom/yandex/metrica/impl/ob/zl$b;->b:Lcom/yandex/metrica/impl/ob/zl$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/zl$b;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/zl$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/zl$b;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/zl$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/zl$b;->f:[Lcom/yandex/metrica/impl/ob/zl$b;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/zl$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/zl$b;

    return-object v0
.end method
