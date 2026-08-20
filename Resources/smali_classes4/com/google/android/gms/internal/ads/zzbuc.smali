.class public final synthetic Lcom/google/android/gms/internal/ads/zzbuc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbud;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbta;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbud;Lcom/google/android/gms/internal/ads/zzbta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuc;->zza:Lcom/google/android/gms/internal/ads/zzbud;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbuc;->zzb:Lcom/google/android/gms/internal/ads/zzbta;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuc;->zzb:Lcom/google/android/gms/internal/ads/zzbta;

    const-string v1, "/result"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbqc;->zzo:Lcom/google/android/gms/internal/ads/zzbqr;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbta;->zzr(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqd;)V

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbta;->zzc()V

    return-void
.end method
