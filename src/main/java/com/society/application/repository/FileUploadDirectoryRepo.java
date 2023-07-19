package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.FileUploadDirectory;

@Repository
public interface FileUploadDirectoryRepo extends JpaRepository<FileUploadDirectory, Integer> {
	@Query(value="select * from file_upload_directory where module=?1 AND type = ?2 AND user_id=?3 ORDER BY id DESC LIMIT 1",nativeQuery = true)
	FileUploadDirectory getIamges(String module,String type,String userId);
	
}
