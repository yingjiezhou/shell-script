void write_to_file()
{
	TH1F h("my_histogram","my Title; X; # of entries", 100, -5, 5);
	h.FillRandom("gaus");
	TFile out_file("my_rootfile.root", "RECREATE");
	h.Write();
	out_file.Close();
}
