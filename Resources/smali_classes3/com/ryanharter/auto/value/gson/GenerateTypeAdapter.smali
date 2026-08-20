.class public interface abstract annotation Lcom/ryanharter/auto/value/gson/GenerateTypeAdapter;
.super Ljava/lang/Object;
.source "GenerateTypeAdapter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/ryanharter/auto/value/gson/GenerateTypeAdapter$1;

    invoke-direct {v0}, Lcom/ryanharter/auto/value/gson/GenerateTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/ryanharter/auto/value/gson/GenerateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method
