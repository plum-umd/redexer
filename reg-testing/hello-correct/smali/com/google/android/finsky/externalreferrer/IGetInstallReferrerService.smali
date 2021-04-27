.class public interface abstract Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;
.super Ljava/lang/Object;
.source "IGetInstallReferrerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getInstallReferrer(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
