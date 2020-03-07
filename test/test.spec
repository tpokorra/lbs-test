%define name test
%define version 1.0.0
%define tarballversion 1.0.0

Summary: Test
Name: %{name}
Version: %{version}
Release: %{release}
Packager: Timotheus Pokorra <timotheus.pokorra@solidcharity.com>
License: GPL
Group: Development
BuildRequires: gcc
BuildRoot: /tmp/buildroot
Source: test.tar.bz2
Source1: test2.txt

%description
Test

%global debug_package %{nil}

%prep
[ -d %{buildroot} ] && [ "/" != "%{buildroot}" ] && rm -rf %{buildroot}
%setup -q -n test-%{tarballversion}

%build
# Configure and make source
#./configure
#make

%install
rm -rf %{buildroot}
#make DESTDIR=%{buildroot} install
mkdir -p %{buildroot}/opt/test
cp test.txt %{buildroot}/opt/test
install -p -m644 %{SOURCE1} %{buildroot}/opt/test

%clean
# Clean up after ourselves, but be careful in case someone sets a bad buildroot
[ -d %{buildroot} ] && [ "/" != "%{buildroot}" ] && rm -rf %{buildroot}

%post -p /sbin/ldconfig

%postun -p /sbin/ldconfig

%files
/opt/test

%changelog
* Fri Jun 13 2014 Timotheus Pokorra <timotheus.pokorra@solidcharity.com>
- Test package for LBS
